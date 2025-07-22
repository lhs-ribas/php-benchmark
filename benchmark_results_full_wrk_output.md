# PHP Benchmark Results (Grouped by Endpoint)

_Threads and duration are adjusted based on connection count_

## Endpoint: `/hello.php`

| Connections | Threads | Latency (avg) | Req/Sec | Transfer/sec | Requests |
|-------------|---------|----------------|---------|---------------|----------|
| 1           | 1       | 163.52us       | 6075.61 | 1.08MB        | 30981    |
| 5           | 1       | 255.92us       | 19284.57 | 3.42MB        | 98345    |

<details>
<summary><strong>1 connections, 1 thread(s)</strong></summary>

```
Latency     : 163.52us avg / 44.12us stdev / 2.28ms max / ±93.36%
Req/Sec     : 6.11k avg / 291.14 stdev / 6.48k max / ±90.20%
Total Req   : 30981
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 1.08MB

Full WRK Output:
Running 5s test @ http://localhost:8080/hello.php
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   163.52us   44.12us   2.28ms   93.36%
    Req/Sec     6.11k   291.14     6.48k    90.20%
  30981 requests in 5.10s, 5.50MB read
Requests/sec:   6075.61
Transfer/sec:      1.08MB
```

</details>

<details>
<summary><strong>5 connections, 1 thread(s)</strong></summary>

```
Latency     : 255.92us avg / 91.21us stdev / 3.90ms max / ±94.89%
Req/Sec     : 19.38k avg / 599.51 stdev / 20.05k max / ±78.43%
Total Req   : 98345
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 3.42MB

Full WRK Output:
Running 5s test @ http://localhost:8080/hello.php
  1 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   255.92us   91.21us   3.90ms   94.89%
    Req/Sec    19.38k   599.51    20.05k    78.43%
  98345 requests in 5.10s, 17.46MB read
Requests/sec:  19284.57
Transfer/sec:      3.42MB
```

</details>

## Endpoint: `/api.php`

| Connections | Threads | Latency (avg) | Req/Sec | Transfer/sec | Requests |
|-------------|---------|----------------|---------|---------------|----------|
| 1           | 1       | 167.39us       | 5937.67 | 1.07MB        | 30280    |
| 5           | 1       | 246.45us       | 19796.22 | 3.57MB        | 100959   |

<details>
<summary><strong>1 connections, 1 thread(s)</strong></summary>

```
Latency     : 167.39us avg / 42.44us stdev / 1.67ms max / ±93.30%
Req/Sec     : 5.97k avg / 231.98 stdev / 6.43k max / ±82.35%
Total Req   : 30280
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 1.07MB

Full WRK Output:
Running 5s test @ http://localhost:8080/api.php
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   167.39us   42.44us   1.67ms   93.30%
    Req/Sec     5.97k   231.98     6.43k    82.35%
  30280 requests in 5.10s, 5.46MB read
Requests/sec:   5937.67
Transfer/sec:      1.07MB
```

</details>

<details>
<summary><strong>5 connections, 1 thread(s)</strong></summary>

```
Latency     : 246.45us avg / 48.12us stdev / 0.97ms max / ±78.96%
Req/Sec     : 19.91k avg / 230.07 stdev / 20.57k max / ±68.63%
Total Req   : 100959
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 3.57MB

Full WRK Output:
Running 5s test @ http://localhost:8080/api.php
  1 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   246.45us   48.12us   0.97ms   78.96%
    Req/Sec    19.91k   230.07    20.57k    68.63%
  100959 requests in 5.10s, 18.22MB read
Requests/sec:  19796.22
Transfer/sec:      3.57MB
```

</details>

## Endpoint: `/template small.php`

| Connections | Threads | Latency (avg) | Req/Sec | Transfer/sec | Requests |
|-------------|---------|----------------|---------|---------------|----------|
| 1           | 1       | 165.25us       | 5987.38 | 1.21MB        | 30534    |
| 5           | 1       | 247.63us       | 19723.47 | 3.99MB        | 100579   |

<details>
<summary><strong>1 connections, 1 thread(s)</strong></summary>

```
Latency     : 165.25us avg / 30.30us stdev / 714.00us max / ±90.01%
Req/Sec     : 6.02k avg / 93.03 stdev / 6.22k max / ±80.39%
Total Req   : 30534
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 1.21MB

Full WRK Output:
Running 5s test @ http://localhost:8080/template_small.php
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   165.25us   30.30us 714.00us   90.01%
    Req/Sec     6.02k    93.03     6.22k    80.39%
  30534 requests in 5.10s, 6.18MB read
Requests/sec:   5987.38
Transfer/sec:      1.21MB
```

</details>

<details>
<summary><strong>5 connections, 1 thread(s)</strong></summary>

```
Latency     : 247.63us avg / 51.23us stdev / 1.24ms max / ±80.83%
Req/Sec     : 19.83k avg / 309.24 stdev / 20.52k max / ±76.47%
Total Req   : 100579
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 3.99MB

Full WRK Output:
Running 5s test @ http://localhost:8080/template_small.php
  1 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   247.63us   51.23us   1.24ms   80.83%
    Req/Sec    19.83k   309.24    20.52k    76.47%
  100579 requests in 5.10s, 20.35MB read
Requests/sec:  19723.47
Transfer/sec:      3.99MB
```

</details>

## Endpoint: `/template large.php`

| Connections | Threads | Latency (avg) | Req/Sec | Transfer/sec | Requests |
|-------------|---------|----------------|---------|---------------|----------|
| 1           | 1       | 237.59us       | 4174.05 | 68.31MB       | 21285    |
| 5           | 1       | 341.76us       | 14339.75 | 234.69MB      | 73133    |

<details>
<summary><strong>1 connections, 1 thread(s)</strong></summary>

```
Latency     : 237.59us avg / 34.49us stdev / 1.09ms max / ±87.80%
Req/Sec     : 4.19k avg / 74.56 stdev / 4.36k max / ±62.75%
Total Req   : 21285
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 68.31MB

Full WRK Output:
Running 5s test @ http://localhost:8080/template_large.php
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   237.59us   34.49us   1.09ms   87.80%
    Req/Sec     4.19k    74.56     4.36k    62.75%
  21285 requests in 5.10s, 348.36MB read
Requests/sec:   4174.05
Transfer/sec:     68.31MB
```

</details>

<details>
<summary><strong>5 connections, 1 thread(s)</strong></summary>

```
Latency     : 341.76us avg / 88.22us stdev / 1.89ms max / ±90.30%
Req/Sec     : 14.42k avg / 279.78 stdev / 14.88k max / ±70.59%
Total Req   : 73133
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 234.69MB

Full WRK Output:
Running 5s test @ http://localhost:8080/template_large.php
  1 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   341.76us   88.22us   1.89ms   90.30%
    Req/Sec    14.42k   279.78    14.88k    70.59%
  73133 requests in 5.10s, 1.17GB read
Requests/sec:  14339.75
Transfer/sec:    234.69MB
```

</details>

## Endpoint: `/json simple.php`

| Connections | Threads | Latency (avg) | Req/Sec | Transfer/sec | Requests |
|-------------|---------|----------------|---------|---------------|----------|
| 1           | 1       | 163.97us       | 6048.71 | 1.10MB        | 30843    |
| 5           | 1       | 247.29us       | 19778.78 | 3.61MB        | 100857   |

<details>
<summary><strong>1 connections, 1 thread(s)</strong></summary>

```
Latency     : 163.97us avg / 37.47us stdev / 1.73ms max / ±93.03%
Req/Sec     : 6.08k avg / 151.48 stdev / 6.29k max / ±86.27%
Total Req   : 30843
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 1.10MB

Full WRK Output:
Running 5s test @ http://localhost:8080/json_simple.php
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   163.97us   37.47us   1.73ms   93.03%
    Req/Sec     6.08k   151.48     6.29k    86.27%
  30843 requests in 5.10s, 5.62MB read
Requests/sec:   6048.71
Transfer/sec:      1.10MB
```

</details>

<details>
<summary><strong>5 connections, 1 thread(s)</strong></summary>

```
Latency     : 247.29us avg / 56.69us stdev / 2.61ms max / ±86.35%
Req/Sec     : 19.88k avg / 395.63 stdev / 20.55k max / ±88.24%
Total Req   : 100857
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 3.61MB

Full WRK Output:
Running 5s test @ http://localhost:8080/json_simple.php
  1 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   247.29us   56.69us   2.61ms   86.35%
    Req/Sec    19.88k   395.63    20.55k    88.24%
  100857 requests in 5.10s, 18.39MB read
Requests/sec:  19778.78
Transfer/sec:      3.61MB
```

</details>

## Endpoint: `/json small.php`

| Connections | Threads | Latency (avg) | Req/Sec | Transfer/sec | Requests |
|-------------|---------|----------------|---------|---------------|----------|
| 1           | 1       | 163.32us       | 6063.72 | 1.22MB        | 30923    |
| 5           | 1       | 249.94us       | 19669.30 | 3.94MB        | 100313   |

<details>
<summary><strong>1 connections, 1 thread(s)</strong></summary>

```
Latency     : 163.32us avg / 31.33us stdev / 1.00ms max / ±91.76%
Req/Sec     : 6.09k avg / 78.90 stdev / 6.27k max / ±70.59%
Total Req   : 30923
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 1.22MB

Full WRK Output:
Running 5s test @ http://localhost:8080/json_small.php
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   163.32us   31.33us   1.00ms   91.76%
    Req/Sec     6.09k    78.90     6.27k    70.59%
  30923 requests in 5.10s, 6.20MB read
Requests/sec:   6063.72
Transfer/sec:      1.22MB
```

</details>

<details>
<summary><strong>5 connections, 1 thread(s)</strong></summary>

```
Latency     : 249.94us avg / 81.58us stdev / 4.31ms max / ±95.69%
Req/Sec     : 19.77k avg / 598.14 stdev / 20.50k max / ±88.24%
Total Req   : 100313
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 3.94MB

Full WRK Output:
Running 5s test @ http://localhost:8080/json_small.php
  1 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   249.94us   81.58us   4.31ms   95.69%
    Req/Sec    19.77k   598.14    20.50k    88.24%
  100313 requests in 5.10s, 20.11MB read
Requests/sec:  19669.30
Transfer/sec:      3.94MB
```

</details>

## Endpoint: `/json large.php`

| Connections | Threads | Latency (avg) | Req/Sec | Transfer/sec | Requests |
|-------------|---------|----------------|---------|---------------|----------|
| 1           | 1       | 1.66ms         | 602.38  | 418.86MB      | 3017     |
| 5           | 1       | 3.16ms         | 1508.41 | 1.02GB        | 7699     |

<details>
<summary><strong>1 connections, 1 thread(s)</strong></summary>

```
Latency     : 1.66ms avg / 195.31us stdev / 5.35ms max / ±90.10%
Req/Sec     : 605.28 avg / 33.27 stdev / 680.00 max / ±74.00%
Total Req   : 3017
Duration    : 5.01s,
Transfer    : 
+/-
read
Transfer/sec: 418.86MB

Full WRK Output:
Running 5s test @ http://localhost:8080/json_large.php
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.66ms  195.31us   5.35ms   90.10%
    Req/Sec   605.28     33.27   680.00     74.00%
  3017 requests in 5.01s, 2.05GB read
Requests/sec:    602.38
Transfer/sec:    418.86MB
```

</details>

<details>
<summary><strong>5 connections, 1 thread(s)</strong></summary>

```
Latency     : 3.16ms avg / 0.85ms stdev / 10.44ms max / ±68.24%
Req/Sec     : 1.52k avg / 129.77 stdev / 1.75k max / ±84.31%
Total Req   : 7699
Duration    : 5.10s,
Transfer    : 
+/-
read
Transfer/sec: 1.02GB

Full WRK Output:
Running 5s test @ http://localhost:8080/json_large.php
  1 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.16ms    0.85ms  10.44ms   68.24%
    Req/Sec     1.52k   129.77     1.75k    84.31%
  7699 requests in 5.10s, 5.23GB read
Requests/sec:   1508.41
Transfer/sec:      1.02GB
```

</details>

