<div align="center">
  <h1>Hi, I'm Reese.</h1>
  <p><strong>I work where inference engines meet real clusters.</strong></p>
  <p>AI infrastructure · inference systems · distributed runtime · performance engineering</p>
  <p>
    <a href="https://imreese.github.io/"><img src="https://img.shields.io/badge/Website-imreese.github.io-89b4fa?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSI3MCAxNDAgMzcwIDI5MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cGF0aCBkPSJNMTU1IDM3NFYxNTRoMTA4YzMxIDAgNTYgOCA3NCAyMyAxOCAxNSAyNyAzNiAyNyA2MiAwIDE4LTUgMzQtMTQgNDctOSAxMy0yMiAyMy0zOCAzMGw4MiA1OGgtODJsLTY2LTUzaC0zN3Y1M2gtNTRabTU0LTk5aDUyYzE2IDAgMjgtMyAzNy0xMCA4LTcgMTItMTYgMTItMjhzLTQtMjEtMTItMjhjLTktNy0yMS0xMC0zNy0xMGgtNTJ2NzZaIiBmaWxsPSIjZmZmZmZmIi8+PHJlY3QgeD0iNzgiIHk9IjM5NiIgd2lkdGg9IjM1NiIgaGVpZ2h0PSIzMCIgcng9IjE1IiBmaWxsPSIjOTRlMmQ1Ii8+PC9zdmc+&labelColor=1e1e2e" height="28" alt="Website" /></a>
    <a href="https://imreese.github.io/blogs/"><img src="https://img.shields.io/badge/Notes-Engineering%20Blog-a6e3a1?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIxLjUgMSAyMSAyMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj48cmVjdCB4PSIyIiB5PSIxLjUiIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMSIgcng9IjMuNSIgZmlsbD0iIzFlMWUyZSIgc3Ryb2tlPSIjYTZlM2ExIiBzdHJva2Utd2lkdGg9IjIuMiIvPjxwYXRoIGQ9Ik03IDdoMTBNNyAxMS41aDEwTTcgMTZoNiIgc3Ryb2tlPSIjODlkY2ViIiBzdHJva2Utd2lkdGg9IjIuMiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+PGNpcmNsZSBjeD0iMTciIGN5PSIxNiIgcj0iMi4yIiBmaWxsPSIjYTZlM2ExIi8+PC9zdmc+&labelColor=1e1e2e" height="28" alt="Blog" /></a>
    <a href="mailto:reese_duan@outlook.com"><img src="https://img.shields.io/badge/Email-reese__duan%40outlook.com-cba6f7?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwLjUgMy41IDIzIDE3IiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGQ9Ik0xMyA1aDguNUExLjUgMS41IDAgMCAxIDIzIDYuNXYxMWExLjUgMS41IDAgMCAxLTEuNSAxLjVIMTNWNXoiIGZpbGw9IiMwMDc4RDQiLz48cGF0aCBkPSJNMTMgMTJsOSA1LjV2LTExTDEzIDEyeiIgZmlsbD0iIzEwNkVCRSIvPjxwYXRoIGQ9Ik0xMyA1LjVsOC41IDUgMS41LTEtMTAtNC41eiIgZmlsbD0iIzI4QThFQSIvPjxyZWN0IHg9IjEiIHk9IjQiIHdpZHRoPSIxMiIgaGVpZ2h0PSIxNiIgcng9IjIiIGZpbGw9IiMwMDc4RDQiLz48ZWxsaXBzZSBjeD0iNyIgY3k9IjEyIiByeD0iMyIgcnk9IjQiIGZpbGw9IiNmZmZmZmYiLz48ZWxsaXBzZSBjeD0iNyIgY3k9IjEyIiByeD0iMS42IiByeT0iMi4zIiBmaWxsPSIjMDA3OEQ0Ii8+PC9zdmc+&labelColor=1e1e2e" height="28" alt="Email" /></a>
  </p>
</div>

## About

I'm a software engineer on the **Training and Inference Engine team at Baidu AI Computing**, working on enterprise-scale LLM inference deployments.

My focus spans request & runtime scheduling, prefill/decode execution, KV cache management, P/D disaggregation, high-performance transfer engines, and heterogeneous accelerator backends — building systems that stay fast, observable, and reliable at extreme scale.

## Selected Work

> *Building modular, engine-neutral components across the modern LLM serving stack:*

<details>
  <summary><strong>System Architecture & Placement Model</strong></summary>
  <br/>

```text
                         Clients
                            │ (OpenAI / Native Protocols)
                            ▼
┌───────────────────────────────────────────────────────────┐
│                 Inference Frontend (Locus)                │
│  Protocol · Templates · Tokenization · Tool/Reasoning IO  │
└───────────────────────────┬───────────────────────────────┘
                            │ token request
                            ▼
┌───────────────────────────────────────────────────────────┐
│              Global Inference Planner (Locus)             │
│  Load · Cache Locality · Topology · P/D Aware Placement   │
└─────────────┬───────────────────────────────┬─────────────┘
              │ placement plan                │ state plan
              ▼                               ▼
┌───────────────────────────┐   ┌───────────────────────────┐
│     Inference Engines     │   │      KV & State Plane     │
│  SGLang / vLLM / sglang-rs│◄─►│    NexusKV / Mooncake     │
│  GPU Compute & Kernels    │   │ State Index · RDMA/TCP    │
└───────────────────────────┘   └───────────────────────────┘
```
</details>

| Tier | Project | Focus & Highlights | Stack |
| :--- | :--- | :--- | :--- |
| **Control Plane** | [**Locus**](https://github.com/imReese/Locus) | Engine-neutral inference control plane for global compute and model-state placement across heterogeneous engines and state stores. | `Rust` `Axum` `Control-Plane` |
| **State & Cache** | [**NexusKV**](https://github.com/imReese/NexusKV) | Disaggregated KV cache platform separating control plane, data plane, prefix reuse indexing, and engine adapters. | `Go` `Rust` `Python` |
| **Engine Runtime** | [**sglang-rs**](https://github.com/imReese/sglang-rs) | Rust runtime exploring request lifecycle, gRPC routing, prefix caching, KV page allocation, and P/D KV transfer boundaries. | `Rust` `gRPC` `Runtime` |
| **Engineering Notes** | [**imreese.github.io**](https://github.com/imReese/imReese.github.io) | Personal site and source-level systems engineering notes with interactive components and deep dives. | `Next.js` `React` `MDX` |

## Recent Notes

<!-- BLOG-POST-LIST:START -->
- [前缀缓存命中 50%，预填充为什么没有快 2 倍？](https://imreese.github.io/blogs/prefix-cache-prefill-speedup-is-not-2x/)
- [Kimi Linear 的 KDA 缓存：SGLang、vLLM 与 Mooncake Store 全链路](https://imreese.github.io/blogs/kimi-kda-cache-sglang-vllm-mooncake-store/)
- [SGLang v0.5.14 接入 Mooncake Store：缓存页标识、零拷贝与共享 Transfer Engine](https://imreese.github.io/blogs/sglang-to-mooncake-store-kv-cache-path/)
- [SGLang HiCache 读路径：预取、回载和调度流程](https://imreese.github.io/blogs/sglang-hicache-read-path/)
- [SGLang HiCache 写路径：GPU KV 如何写入主机内存和外部存储](https://imreese.github.io/blogs/sglang-hicache-write-path/)
<!-- BLOG-POST-LIST:END -->

## Toolbox

**AI Serving & Runtime**  
<p>
  <a href="https://github.com/sgl-project/sglang"><img src="https://img.shields.io/badge/SGLang-313244?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9IiM4OWI0ZmEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTE3IDRIN2E1IDUgMCAwIDAtNSA1djFhNSA1IDAgMCAwIDUgNWgxMGEzIDMgMCAwIDEgMyAzdjFhMyAzIDAgMCAxLTMgM0g2YTMgMyAwIDAgMS0zLTNIMWE1IDUgMCAwIDAgNSA1aDExYTUgNSAwIDAgMCA1LTV2LTFhNSA1IDAgMCAwLTUtNUg3YTMgMyAwIDAgMS0zLTNWOWEzIDMgMCAwIDEgMy0zaDExYTMgMyAwIDAgMSAzIDNoMmE1IDUgMCAwIDAtNS01eiIvPjwvc3ZnPg==&labelColor=313244&color=313244" height="26" alt="SGLang" /></a>
  <a href="https://github.com/vllm-project/vllm"><img src="https://img.shields.io/badge/vLLM-313244?style=flat&logo=vllm&logoColor=fab387&labelColor=313244&color=313244" height="26" alt="vLLM" /></a>
  <img src="https://img.shields.io/badge/Runtime_Scheduling-313244?style=flat&labelColor=313244&color=313244" height="26" alt="Runtime Scheduling" />
  <img src="https://img.shields.io/badge/P%2FD_Disaggregation-313244?style=flat&labelColor=313244&color=313244" height="26" alt="P/D Disaggregation" />
  <img src="https://img.shields.io/badge/KV_Cache_Hierarchy-313244?style=flat&labelColor=313244&color=313244" height="26" alt="KV Cache Hierarchy" />
  <img src="https://img.shields.io/badge/Prefix_Cache_%26_State_Plane-313244?style=flat&labelColor=313244&color=313244" height="26" alt="Prefix Cache & State Plane" />
</p>

**Storage, Transfer & Infra**  
<p>
  <img src="https://img.shields.io/badge/RDMA_%2F_RoCE-313244?style=flat&labelColor=313244&color=313244" height="26" alt="RDMA / RoCE" />
  <img src="https://img.shields.io/badge/Zero--Copy_I%2FO-313244?style=flat&labelColor=313244&color=313244" height="26" alt="Zero-Copy I/O" />
  <img src="https://img.shields.io/badge/Inference_Control_Plane-313244?style=flat&labelColor=313244&color=313244" height="26" alt="Inference Control Plane" />
  <a href="https://github.com/torvalds/linux"><img src="https://img.shields.io/badge/Linux_Kernel_%26_perf-313244?style=flat&logo=linux&logoColor=f9e2af&labelColor=313244&color=313244" height="26" alt="Linux Kernel & perf" /></a>
  <a href="https://github.com/grpc/grpc"><img src="https://img.shields.io/badge/gRPC-313244?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9IiM4OWRjZWIiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTEyIDJMMy41IDYuOXYxMC4yTDEyIDIybDguNS00LjlWNi45TDEyIDJ6bTAgMi41bDYuMyAzLjYtNi4zIDMuNi02LjMtMy42IDYuMy0zLjZ6TTUuNSA4LjdsNS41IDMuMXY2LjdsLTUuNS0zLjJWOC43em0xMyA2LjZsLTUuNSAzLjJ2LTYuN2w1LjUtMy4xdjYuNnoiLz48L3N2Zz4=&labelColor=313244&color=313244" height="26" alt="gRPC" /></a>
  <a href="https://github.com/kvcache-ai/Mooncake"><img src="https://img.shields.io/badge/Mooncake_Engine-313244?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9IiNmOWUyYWYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iNyIgY3k9IjEyIiByPSI0LjUiIGZpbGw9Im5vbmUiIHN0cm9rZT0iI2Y5ZTJhZiIgc3Ryb2tlLXdpZHRoPSIxLjgiLz48Y2lyY2xlIGN4PSI3IiBjeT0iMTIiIHI9IjIiIGZpbGw9IiNmOWUyYWYiLz48Y2lyY2xlIGN4PSIxNyIgY3k9IjEyIiByPSI0LjUiIGZpbGw9Im5vbmUiIHN0cm9rZT0iI2Y5ZTJhZiIgc3Ryb2tlLXdpZHRoPSIxLjgiLz48Y2lyY2xlIGN4PSIxNyIgY3k9IjEyIiByPSIyIiBmaWxsPSIjZjllMmFmIi8+PC9zdmc+&labelColor=313244&color=313244" height="26" alt="Mooncake Engine" /></a>
</p>

**Languages**  
<p>
  <a href="https://en.cppreference.com/"><img src="https://img.shields.io/badge/C%2B%2B-313244?style=flat&logo=c%2B%2B&logoColor=89b4fa&labelColor=313244&color=313244" height="26" alt="C++" /></a>
  <a href="https://github.com/python/cpython"><img src="https://img.shields.io/badge/Python-313244?style=flat&logo=python&logoColor=f9e2af&labelColor=313244&color=313244" height="26" alt="Python" /></a>
  <a href="https://github.com/golang/go"><img src="https://img.shields.io/badge/Go-313244?style=flat&logo=go&logoColor=89dceb&labelColor=313244&color=313244" height="26" alt="Go" /></a>
  <a href="https://github.com/rust-lang/rust"><img src="https://img.shields.io/badge/Rust-313244?style=flat&logo=rust&logoColor=fab387&labelColor=313244&color=313244" height="26" alt="Rust" /></a>
  <a href="https://www.gnu.org/software/bash/"><img src="https://img.shields.io/badge/Bash-313244?style=flat&logo=gnubash&logoColor=a6e3a1&labelColor=313244&color=313244" height="26" alt="Bash" /></a>
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
