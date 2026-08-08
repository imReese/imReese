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

## About

I'm a software engineer on the **Training and Inference Engine team at Baidu AI
Computing**, where I work on enterprise SGLang deployments on clusters with
more than **10,000 accelerators**.

My work spans runtime scheduling, prefill and decode execution, KV cache
management, prefill/decode disaggregation, Mooncake Transfer Engine, and
heterogeneous accelerator backends. I focus on making serving systems fast,
observable, and reliable at scale.

## Selected work

| Project | What it explores |
| --- | --- |
| [**sglang-rs**](https://github.com/imReese/sglang-rs) | A Rust runtime covering the request lifecycle, gRPC routing, scheduling, prefix caching, KV page allocation, and KV transfer boundaries between prefill and decode. |
| [**NexusKV**](https://github.com/imReese/NexusKV) | A KV cache platform separating the control plane, data plane, state management and indexing, and engine adapters across Go, Rust, and Python. |
| [**imreese.github.io**](https://github.com/imReese/imReese.github.io) | My personal site and source-level engineering notes, built with Next.js and MDX. |

## Recent notes

- [Integrating SGLang v0.5.14 with Mooncake Store: page keys, zero-copy access, and a shared Transfer Engine](https://imreese.github.io/blogs/sglang-to-mooncake-store-kv-cache-path/)
- [Inside SGLang's HiCache read path: prefetching, restoration, and scheduling boundaries](https://imreese.github.io/blogs/sglang-hicache-read-path/)
- [Inside SGLang's HiCache write path: moving GPU KV cache to host memory and storage](https://imreese.github.io/blogs/sglang-hicache-write-path/)
- [Inside the Mooncake Transfer Engine transport layer: TCP, RDMA, and device paths](https://imreese.github.io/blogs/mooncake-transfer-engine-transport-layer/)

## Toolbox

<p align="center">
  C++ · Python · Go · Rust · Linux · Kubernetes · SGLang · KV cache · Mooncake Transfer Engine · gRPC
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
