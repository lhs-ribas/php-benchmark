
# 🔬 PHP 8.4 Benchmark Suite (ARM & AMD)

This project provides a Docker-based benchmarking environment for PHP 8.4, supporting both AMD64 and ARM64 architectures. It uses [wrk](https://github.com/wg/wrk) to stress test common PHP endpoints across varying concurrency levels.

---

## 📦 Supported Architectures

- `amd64` (x86_64)
- `arm64v8` (e.g., Apple Silicon, Raspberry Pi)

---

## 📁 Project Structure

```

.
├── Dockerfile.amd64             # Dockerfile for amd64 builds
├── Dockerfile.arm64             # Dockerfile for arm64 builds
├── composer.json                # Optional app dependencies
├── public/
│   └── index.php                # Landing page and dashboard
├── script/
│   └── run.sh                   # Benchmark execution script

````

---

## 🚀 How to Build

### 🖥️ Build for AMD64

```bash
docker build -f Dockerfile.amd64 -t php-bench:amd64 .
````

### 🍏 Build for ARM64

```bash
docker buildx build --platform=linux/arm64 -f Dockerfile.arm64 -t php-bench:arm64 .
```

> ℹ️ Requires Docker Desktop or QEMU for cross-architecture builds.

---

## 🧪 How to Run the Benchmark

```bash
docker run --rm -p 8080:80 \
  -e BENCHMARK_APP_PORT=8080 \
  -e CONNECTIONS="1 5 10 20 50 100" \
  php-bench:amd64
```

Then, open your browser at:
👉 [http://localhost:8080](http://localhost:8080)

---

## ⚙️ Environment Variables

| Variable             | Description                                          | Default  |
| -------------------- | ---------------------------------------------------- | -------- |
| `BENCHMARK_APP_PORT` | Port used by the benchmark container (for docs only) | `80`     |
| `CONNECTIONS`        | Space-separated list of concurrency levels for wrk   | `1 5 10` |

You can set these inline or export before running:

```bash
export BENCHMARK_APP_PORT=8080
export CONNECTIONS="1 5 10 100"
docker run --rm -p 8080:80 php-bench
```

---

## 🌐 Application Endpoints

Available URLs (auto-tested by the benchmark script):

* `/hello.php`
* `/api.php`
* `/template_small.php`
* `/template_large.php`
* `/json_simple.php`
* `/json_small.php`
* `/json_large.php`

---

## 📄 Benchmark Output

When you run the benchmark via:

```bash
bash /home/run.sh
```

A Markdown file will be created with all results:

```
/benchmark_results_full_wrk_output.md
/benchmark_results_full_wrk_output_v1.md
/benchmark_results_full_wrk_output_v2.md
...
```

Each run captures:

* Latency (avg, stdev, max)
* Requests/sec (avg, stdev, max)
* Total requests, duration, and transfer rate
* All concurrency levels defined via `CONNECTIONS`

---

## 📊 Web Dashboard (`index.php`)

When accessing the container in a browser, the landing page displays:

* PHP version and system architecture
* Dockerfiles (AMD64 + ARM64)
* Benchmark script
* Current environment variables
* Instructions for usage

---

## ✅ Example Workflow

```bash
# Build image
docker build -f Dockerfile.amd64 -t php-bench .

# Run container with custom concurrency
docker run --rm -p 8080:80 \
  -e CONNECTIONS="1 5 20 100 1000" \
  php-bench

# Inside container, run benchmark
docker exec -it <container_id> bash
/home/run.sh

# View results
cat /benchmark_results_full_wrk_output.md
```

---

## 🧼 Clean Exit

All containers are run with `--rm` so no cleanup is needed. Benchmark results persist only in the running container unless copied out.

---

## 📥 Future Improvements

* Save results to a mounted volume
* Auto-trigger benchmark from the dashboard
* Export charts or JSON results
* Add request payload types and response times

---

## 🧑‍💻 Maintainer

This benchmark suite was designed to evaluate PHP 8.4 performance across platforms with consistency and transparency.

Feel free to fork and extend!
