<?php

declare(strict_types=1);

function printEnvVar(string $name, string $description, string $default = 'not set'): void {
    $value = getenv($name) ?: "<em>$default</em>";
    echo "<tr><td><code>$name</code></td><td>$value</td><td>$description</td></tr>";
}

function showCodeFile(string $label, string $path): void {
    echo "<h3>$label</h3>";
    if (file_exists($path)) {
        echo "<pre><code>" . htmlspecialchars(file_get_contents($path)) . "</code></pre>";
    } else {
        echo "<p style='color:red;'>⚠️ File not found: <code>$path</code></p>";
    }
}

echo "<h1>🔬 PHP 8.4 Benchmark Dashboard</h1>";

echo "<p><strong>Architecture:</strong> " . php_uname('m') . "</p>";
echo "<p><strong>PHP Version:</strong> " . PHP_VERSION . "</p>";

echo "<h2>📦 Runtime Environment Variables</h2>";
echo "<table border='1' cellpadding='6' cellspacing='0'>";
echo "<tr><th>Variable</th><th>Current Value</th><th>Description</th></tr>";

printEnvVar('BENCHMARK_APP_PORT', 'Which port the app is served on inside Docker', '80');
printEnvVar('CONNECTIONS', 'Space-separated concurrency levels for wrk', '1 5 10');

echo "</table>";

echo "<h2>⚙️ How to Use</h2>";
echo "<ul>";
echo "<li>Build the container using <code>Dockerfile.amd64</code> or <code>Dockerfile.arm64</code></li>";
echo "<li>Run the container:<br><code>docker run --rm -p \$BENCHMARK_APP_PORT:80 -e BENCHMARK_APP_PORT=8080 -e CONNECTIONS=\"1 5 10\" php-bench</code></li>";
echo "<li>Access this page: <code>http://localhost:\$BENCHMARK_APP_PORT</code></li>";
echo "<li>Inside the container, run: <code>bash /home/run.sh</code> to execute benchmarks</li>";
echo "<li>Benchmark results will be written to: <code>/benchmark_results_full_wrk_output.md</code></li>";
echo "</ul>";

echo "<h2>📄 Configuration Files</h2>";
showCodeFile("Dockerfile (amd64)", "/var/www/Dockerfile.amd64");
showCodeFile("Dockerfile (arm64)", "/var/www/Dockerfile.arm64");
showCodeFile("Benchmark Script: /home/benchmark/run.sh", "/var/www/run.sh");
