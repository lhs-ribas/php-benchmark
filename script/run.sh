#!/bin/bash

# This script runs benchmarks against a PHP application using wrk.
PORT="${BENCHMARK_APP_PORT:-80}"

# === Auto-versioned output ===
base_output="benchmark_results_full_wrk_output"
ext=".md"
OUTPUT="./${base_output}${ext}"

# If file exists, find next version
if [[ -f "$OUTPUT" ]]; then
  i=1
  while [[ -f "${base_output}_v${i}${ext}" ]]; do
    ((i++))
  done
  OUTPUT="./${base_output}_v${i}${ext}"
fi

echo "Writing output to: $OUTPUT"

# === Benchmark targets ===
URLS=(
  "http://localhost:$PORT/hello.php"
  "http://localhost:$PORT/api.php"
  "http://localhost:$PORT/template_small.php"
  "http://localhost:$PORT/template_large.php"
  "http://localhost:$PORT/json_simple.php"
  "http://localhost:$PORT/json_small.php"
  "http://localhost:$PORT/json_large.php"
)

# Read CONNECTIONS from env var or use default
#CONNECTIONS=(1 5 10 20 50 100 1000 2000 5000)
CONNECTIONS=(${CONNECTIONS:-"1 5 10"})

echo "Testing with connection levels: ${CONNECTIONS[@]}"

# === Start output file ===
{
  echo "# PHP Benchmark Results (Grouped by Endpoint)"
  echo ""
  echo "_Threads and duration are adjusted based on connection count_"
  echo ""
} > "$OUTPUT"

# === Run benchmarks ===
for url in "${URLS[@]}"; do
  label=$(basename "$url" .php | tr '_' ' ')
  echo "## Endpoint: \`/$label.php\`" >> "$OUTPUT"
  echo "" >> "$OUTPUT"

  echo "| Connections | Threads | Latency (avg) | Req/Sec | Transfer/sec | Requests |" >> "$OUTPUT"
  echo "|-------------|---------|----------------|---------|---------------|----------|" >> "$OUTPUT"

  DETAILS=()

  for c in "${CONNECTIONS[@]}"; do
    THREADS=$(( (c + 24) / 25 ))
    [[ $THREADS -lt 1 ]] && THREADS=1

    if (( c <= 5 )); then
      DURATION="5s"
    elif (( c <= 20 )); then
      DURATION="10s"
    else
      DURATION="30s"
    fi

    result=$(wrk -t"$THREADS" -c"$c" -d"$DURATION" "$url" 2>/dev/null)

    latency=$(echo "$result" | awk '/Latency/ {print $2}')
    rps=$(echo "$result" | awk '/Requests\/sec/ {print $2}')
    transfer_sec=$(echo "$result" | awk '/Transfer\/sec/ {print $2}')
    total_requests=$(echo "$result" | awk '/requests in/ {print $1}')

    lat_stdev=$(echo "$result" | awk '/Latency/ {print $3}')
    lat_max=$(echo "$result" | awk '/Latency/ {print $4}')
    lat_dev=$(echo "$result" | awk '/Latency/ {print $5}')
    req_avg=$(echo "$result" | awk '/Req\/Sec/ {print $2}')
    req_stdev=$(echo "$result" | awk '/Req\/Sec/ {print $3}')
    req_max=$(echo "$result" | awk '/Req\/Sec/ {print $4}')
    req_dev=$(echo "$result" | awk '/Req\/Sec/ {print $5}')
    total_time=$(echo "$result" | awk '/requests in/ {print $4}')
    total_read=$(echo "$result" | awk '/read/ {print $6}')

    printf "| %-11s | %-7s | %-14s | %-7s | %-13s | %-8s |\n" \
      "$c" "$THREADS" "$latency" "$rps" "$transfer_sec" "$total_requests" >> "$OUTPUT"

    DETAILS+=("<details>
<summary><strong>${c} connections, ${THREADS} thread(s)</strong></summary>

\`\`\`
Latency     : $latency avg / $lat_stdev stdev / $lat_max max / ±$lat_dev
Req/Sec     : $req_avg avg / $req_stdev stdev / $req_max max / ±$req_dev
Total Req   : $total_requests
Duration    : $total_time
Transfer    : $total_read
Transfer/sec: $transfer_sec

Full WRK Output:
$result
\`\`\`

</details>")
  done

  echo "" >> "$OUTPUT"

  for detail in "${DETAILS[@]}"; do
    echo "$detail" >> "$OUTPUT"
    echo "" >> "$OUTPUT"
  done
done
