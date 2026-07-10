<div align="center">
  <h1>Hi, I'm Reese.</h1>
  <p><strong>I work where inference engines meet real clusters.</strong></p>
  <p>AI infrastructure · SGLang · distributed systems · performance engineering</p>
  <p>
    <a href="https://imreese.github.io/">Website</a> ·
    <a href="https://imreese.github.io/blogs/">Engineering notes</a> ·
    <a href="mailto:reese_duan@outlook.com">Email</a>
  </p>
</div>

<p align="center">
  <a href="https://git.io/typing-svg">
    <img
      src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&amp;weight=600&amp;size=21&amp;duration=2600&amp;pause=900&amp;color=4F8CC9&amp;center=true&amp;vCenter=true&amp;width=780&amp;lines=SGLang+at+cluster+scale;Runtime+%7C+KV+Cache+%7C+PD+disaggregation;Fast+enough+to+benchmark.+Reliable+enough+to+serve."
      alt="Typing animation: SGLang at cluster scale; runtime, KV cache, and PD disaggregation; fast enough to benchmark and reliable enough to serve"
    />
  </a>
</p>

## 🛰️ Current coordinates

<a href="https://github.com/imReese">
  <img
    align="right"
    width="170"
    src="https://octodex.github.com/images/Robotocat.png"
    alt="GitHub Robotocat"
  />
</a>

I'm a software engineer in **Baidu AI Computing's Training & Inference Engine
Team**, supporting enterprise SGLang deployment across **10k-accelerator
clusters**.

- 🚀 **Scale** — production inference serving across large accelerator fleets
- ⚙️ **Runtime** — scheduling, batching, prefill/decode, and backend execution
- 🧠 **Memory** — prefix cache, KV cache, residency, and memory hierarchy
- 🔄 **Transfer** — PD disaggregation, KV movement, and Mooncake TransferEngine
- 🔎 **Reliability** — profiling, observability, fault diagnosis, and validation

<br clear="right" />

## 🗺️ Systems map

```mermaid
flowchart LR
    Q[Requests] --> R[Router]
    R --> S[Scheduler]
    S --> P[Prefill]
    S --> D[Decode]
    P <--> K[KV Cache]
    D <--> K
    K <--> T[Mooncake TE]
    P --> B[Accelerator Backends]
    D --> B
```

The part I enjoy most is where these boxes stop behaving like separate
subsystems: a scheduling decision changes cache residency, data movement shifts
the latency profile, and backend details surface all the way up the request
path.

## 🧩 Selected systems

| Project | What it explores |
| --- | --- |
| [**sglang-rs**](https://github.com/imReese/sglang-rs) | A Rust runtime covering request lifecycle, gRPC routing, scheduling, prefix caching, KV page allocation, and PD KV-transfer boundaries. |
| [**NexusKV**](https://github.com/imReese/NexusKV) | A KV cache platform separating control plane, data plane, state/index, and engine adapters across Go, Rust, and Python. |
| [**imreese.github.io**](https://github.com/imReese/imReese.github.io) | My personal site and source-level engineering notes, built with Next.js and MDX. |

## ✍️ Recent field notes

- [SGLang v0.5.14 to Mooncake Store: page key, zero-copy, and shared TE](https://imreese.github.io/blogs/sglang-to-mooncake-store-kv-cache-path/)
- [SGLang HiCache read path: prefetch, load back, and scheduling boundaries](https://imreese.github.io/blogs/sglang-hicache-read-path/)
- [SGLang HiCache write path: moving GPU KV to Host and Storage](https://imreese.github.io/blogs/sglang-hicache-write-path/)
- [Mooncake Transfer Engine transport layer: TCP, RDMA, and device paths](https://imreese.github.io/blogs/mooncake-transfer-engine-transport-layer/)

## 🧰 Toolbox

<p align="center">
  <picture>
    <source
      media="(prefers-color-scheme: dark)"
      srcset="https://skillicons.dev/icons?i=rust,cpp,go,python,linux,docker,kubernetes,git&amp;theme=dark"
    />
    <source
      media="(prefers-color-scheme: light)"
      srcset="https://skillicons.dev/icons?i=rust,cpp,go,python,linux,docker,kubernetes,git&amp;theme=light"
    />
    <img
      src="https://skillicons.dev/icons?i=rust,cpp,go,python,linux,docker,kubernetes,git&amp;theme=light"
      alt="Rust, C++, Go, Python, Linux, Docker, Kubernetes, and Git"
    />
  </picture>
</p>

<p align="center">
  SGLang · KV Cache · Mooncake TE · gRPC · perf · tracing · benchmarking
</p>

<details>
  <summary><strong>Earlier systems work</strong></summary>
  <br />
  Before Baidu, I worked on cloud workload characterization and CPU
  architecture at Huawei Cloud's Shuhai Lab, and on distributed-storage
  control-plane systems at Huawei Data Storage.
</details>

## 🐍 Contributions

<picture>
  <source
    media="(prefers-color-scheme: dark)"
    srcset="https://raw.githubusercontent.com/imReese/imReese/output/github-snake-dark.svg"
  />
  <source
    media="(prefers-color-scheme: light)"
    srcset="https://raw.githubusercontent.com/imReese/imReese/output/github-snake.svg"
  />
  <img
    alt="GitHub contribution snake"
    src="https://raw.githubusercontent.com/imReese/imReese/output/github-snake.svg"
  />
</picture>

<p align="center">
  <sub>Beijing, China · building systems that stay understandable under load</sub>
</p>
