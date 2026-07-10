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

## About

I'm a software engineer in **Baidu AI Computing's Training & Inference Engine
Team**, supporting enterprise SGLang deployment across **10k-accelerator
clusters**.

My work spans runtime scheduling, prefill/decode execution, KV Cache, PD
disaggregation, Mooncake TransferEngine, and heterogeneous accelerator
backends. I care about making serving systems fast, observable, and reliable at
scale.

## Selected work

| Project | What it explores |
| --- | --- |
| [**sglang-rs**](https://github.com/imReese/sglang-rs) | A Rust runtime covering request lifecycle, gRPC routing, scheduling, prefix caching, KV page allocation, and PD KV-transfer boundaries. |
| [**NexusKV**](https://github.com/imReese/NexusKV) | A KV cache platform separating control plane, data plane, state/index, and engine adapters across Go, Rust, and Python. |
| [**imreese.github.io**](https://github.com/imReese/imReese.github.io) | My personal site and source-level engineering notes, built with Next.js and MDX. |

## Recent notes

- [SGLang v0.5.14 to Mooncake Store: page key, zero-copy, and shared TE](https://imreese.github.io/blogs/sglang-to-mooncake-store-kv-cache-path/)
- [SGLang HiCache read path: prefetch, load back, and scheduling boundaries](https://imreese.github.io/blogs/sglang-hicache-read-path/)
- [SGLang HiCache write path: moving GPU KV to Host and Storage](https://imreese.github.io/blogs/sglang-hicache-write-path/)
- [Mooncake Transfer Engine transport layer: TCP, RDMA, and device paths](https://imreese.github.io/blogs/mooncake-transfer-engine-transport-layer/)

## Toolbox

<p align="center">
  <picture>
    <source
      media="(prefers-color-scheme: dark)"
      srcset="https://skillicons.dev/icons?i=rust%2Ccpp%2Cgo%2Cpython%2Clinux%2Cdocker%2Ckubernetes%2Cgit&amp;theme=dark"
    />
    <source
      media="(prefers-color-scheme: light)"
      srcset="https://skillicons.dev/icons?i=rust%2Ccpp%2Cgo%2Cpython%2Clinux%2Cdocker%2Ckubernetes%2Cgit&amp;theme=light"
    />
    <img
      src="https://skillicons.dev/icons?i=rust%2Ccpp%2Cgo%2Cpython%2Clinux%2Cdocker%2Ckubernetes%2Cgit&amp;theme=light"
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

## Contributions

<picture>
  <source
    media="(prefers-color-scheme: dark)"
    srcset="https://raw.githubusercontent.com/imReese/imReese/output/github-contribution-grid-snake-dark.svg"
  />
  <source
    media="(prefers-color-scheme: light)"
    srcset="https://raw.githubusercontent.com/imReese/imReese/output/github-contribution-grid-snake.svg"
  />
  <img
    alt="GitHub contribution snake"
    src="https://raw.githubusercontent.com/imReese/imReese/output/github-contribution-grid-snake.svg"
  />
</picture>

<p align="center">
  <sub>Beijing, China · building systems that stay understandable under load</sub>
</p>
