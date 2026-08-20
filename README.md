<div align="center">
  <h1>Hi, I'm Reese.</h1>
  <p><strong>I work where inference engines meet real clusters.</strong></p>
  <p>AI infrastructure · inference systems · distributed runtime · performance engineering</p>
  <p>
    <a href="https://imreese.github.io/"><img src="https://img.shields.io/badge/Website-imreese.github.io-89b4fa?style=flat&logo=google-chrome&logoColor=white&labelColor=1e1e2e" height="26" alt="Website" /></a>
    <a href="https://imreese.github.io/blogs/"><img src="https://img.shields.io/badge/Notes-Engineering%20Blog-a6e3a1?style=flat&logo=hashnode&logoColor=white&labelColor=1e1e2e" height="26" alt="Blog" /></a>
    <a href="mailto:reese_duan@outlook.com"><img src="https://img.shields.io/badge/Email-reese__duan%40outlook.com-cba6f7?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9IiNmZmZmZmYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTIyLjUgNS41aC0xM2ExLjUgMS41IDAgMCAwLTEuNSAxLjV2MS4ybDggNC44IDgtNC44VjdhMS41IDEuNSAwIDAgMC0xLjUtMS41em0tMTQuNSA5LjhWMTdhMS41IDEuNSAwIDAgMCAxLjUgMS41aDEzYTEuNSAxLjUgMCAwIDAgMS41LTEuNXYtNy4ybC03LjUgNC41YTEgMSAwIDAgMS0xIDBMOCA5Ljh6bS0yLTkuM0gyQTEuNSAxLjUgMCAwIDAgLjUgNy41djlBMS41IDEuNSAwIDAgMCAyIDE4aDRWNnoiLz48L3N2Zz4=&labelColor=1e1e2e" height="26" alt="Email" /></a>
  </p>
</div>

## About

I'm a software engineer on the **Training and Inference Engine team at Baidu AI Computing**, working on enterprise-scale LLM inference deployments.

My focus spans request & runtime scheduling, prefill/decode execution, KV cache management, P/D disaggregation, high-performance transfer engines, and heterogeneous accelerator backends — building systems that stay fast, observable, and reliable at extreme scale.

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
│  SGLang / vLLM / Run-rs   │◄─►│    NexusKV / Mooncake     │
│  GPU Compute & Kernels    │   │ State Index · RDMA/TCP    │
└───────────────────────────┘   └───────────────────────────┘
```
</details>

## Selected Work

> *Building modular, engine-neutral components across the modern LLM serving stack:*

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
  <img src="https://img.shields.io/badge/SGLang-313244?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9IiM4OWI0ZmEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTE3IDRIN2E1IDUgMCAwIDAtNSA1djFhNSA1IDAgMCAwIDUgNWgxMGEzIDMgMCAwIDEgMyAzdjFhMyAzIDAgMCAxLTMgM0g2YTMgMyAwIDAgMS0zLTNIMWE1IDUgMCAwIDAgNSA1aDExYTUgNSAwIDAgMCA1LTV2LTFhNSA1IDAgMCAwLTUtNUg3YTMgMyAwIDAgMS0zLTNWOWEzIDMgMCAwIDEgMy0zaDExYTMgMyAwIDAgMSAzIDNoMmE1IDUgMCAwIDAtNS01eiIvPjwvc3ZnPg==&labelColor=313244&color=313244" height="26" alt="SGLang" />
  <img src="https://img.shields.io/badge/vLLM-313244?style=flat&logo=vllm&logoColor=fab387&labelColor=313244&color=313244" height="26" alt="vLLM" />
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
  <img src="https://img.shields.io/badge/Linux_Kernel_%26_perf-313244?style=flat&logo=linux&logoColor=f9e2af&labelColor=313244&color=313244" height="26" alt="Linux Kernel & perf" />
  <img src="https://img.shields.io/badge/gRPC-313244?style=flat&logo=data:image/svg+xml;base64,PHN2ZyBmaWxsPSIjODlkY2ViIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMjggMTI4Ij48cGF0aCBkPSJNOC44MzggMzguMDMgMCA0Ni45MzVsOC45MzggOC44MzdMMTIuNCA1Mi4yN2wtMy4xMzIuMDEtNS4zOTEtNS4zNTEgNS4zNTItNS4zOTMgMy4xMjgtLjAxMi0zLjUyLTMuNDk2em0zLjUyIDMuNDk1LjcxNi43MTEuNzEzLS43MTYtMS40My4wMDV6bS43MTYuNzExLTQuMDMzIDQuMDY1IDguMDk4LS4wMy00LjA2NS00LjAzNXptNC4wNjUgNC4wMzUuNjAxLjU5OC0uNjEzLjYyMSAxMS40MTYtLjA0My0uNjM1LS42My41ODItLjU4Ny0xMS4zNTEuMDQxem0xMS4zNTEtLjA0IDQuMTctLjAxNi0yLjA4Ni0yLjA3IDIuMjgxLS4wMDggMi42OTYgMi42NzUtMi42NzYgMi42OTYtMi4yNDguMDA4TDMzLjEzMSA1Mmw1LjE4My01LjIyMy01LjIyMi01LjE4My00LjYwMiA0LjYzNnptMi4xMzcgMy4yODUtLjAxNi0uMDE2LS4wMTUuMDE2aC4wMzF6bS0uMDE2LS4wMTYgMi4wNTMtMi4wNjgtNC4xMjEuMDE1IDIuMDY4IDIuMDUzem0tMTMuNDg0LTIuMDEtOC4wOC4wMyA0LjA2MiA0LjAzMyA0LjAxOC00LjA2M3ptLTQuMDE4IDQuMDYzLS43MDkuNzE4IDEuNDI4LS4wMDUtLjcxOS0uNzEzem0xMDIuMzgxLTcuNzFjLTIuNTE1IDAtNC44NDcuNDQ4LTYuOTk2IDEuMzM5LTIuMTQ5Ljg5LTQuMDEgMi4xMjUtNS41ODYgMy43LTEuNTc2IDEuNTc2LTIuODA5IDMuNDQ2LTMuNjk5IDUuNjEtLjg5MyAyLjE2NS0xLjMzOCA0LjUzNS0xLjMzOCA3LjExMyAwIDIuNTguNDQ0IDQuOTUzIDEuMzM2IDcuMTE4Ljg5IDIuMTY0IDIuMTI1IDQuMDMzIDMuNzAxIDUuNjA5IDEuNTc2IDEuNTc2IDMuNDM3IDIuODEgNS41ODYgMy43IDIuMTUuODkgNC40OCAxLjMzNyA2Ljk5NiAxLjMzNyAxLjQgMCAyLjcyOS0uMTYgMy45ODctLjQ3NmExNi40NzcgMTYuNDc3IDAgMCAwIDMuNTEtMS4zMTUgMTMuNDMzIDEzLjQzMyAwIDAgMCAyLjg5LTEuOThBMTMuMTExIDEzLjExMSAwIDAgMCAxMjggNzMuMTYybC0yLjgxNi0yLjAwNmMtLjYzNy45ODctMS4zMyAxLjgwNy0yLjA3NyAyLjQ2YTkuNzU1IDkuNzU1IDAgMCAxLTIuMzg4IDEuNTUyYy0uODQ0LjM4Mi0xLjcwMy42NTItMi41NzguODFhMTQuNzYgMTQuNzYgMCAwIDEtMi42NS4yNGMtMi4xNjYgMC00LjEwOC0uMzk4LTUuODI3LTEuMTk1LTEuNzItLjc5NS0zLjE3My0xLjg2LTQuMzY3LTMuMTk5LTEuMTkzLTEuMzM2LTIuMTEtMi44ODctMi43NDYtNC42NTRhMTYuMjc4IDE2LjI3OCAwIDAgMS0uOTU1LTUuNTY1YzAtMS45NC4zMTktMy43OTQuOTU1LTUuNTYuNjM3LTEuNzY3IDEuNTUzLTMuMzIgMi43NDYtNC42NTYgMS4xOTQtMS4zMzcgMi42NDgtMi40MDQgNC4zNjctMy4yIDEuNzItLjc5NSAzLjY2LTEuMTkzIDUuODI2LTEuMTkzLjg5IDAgMS43ODIuMTI4IDIuNjc0LjM4My44OS4yNTUgMS43MjguNTg5IDIuNTA4IDEuMDAyLjc4LjQxNCAxLjQ3MS44OSAyLjA3NiAxLjQzMS42MDUuNTQyIDEuMDgzIDEuMDgzIDEuNDM0IDEuNjI0bDMuMDA1LTIuMjQ1Yy0xLjQ5NS0xLjkxLTMuMjkzLTMuMjc2LTUuMzk0LTQuMTA1LTIuMS0uODI3LTQuMjAyLTEuMjQtNi4zMDMtMS4yNHYtLjAwMnptLTcxLjUyNS44NlY3OC41MWgzLjQzN1Y2Mi44aDUuNzNsOS4yNjMgMTUuNzFoNC4yMDNsLTkuNzQzLTE2LjA0M2MyLjgtLjI1NCA0Ljk0NC0xLjE4NiA2LjQyNC0yLjc5MyAxLjQ4LTEuNjA3IDIuMjE5LTMuNTkgMi4yMTktNS45NDUgMC0zLjAyNC0uOTkzLTUuMgo=&labelColor=313244&color=313244" height="26" alt="gRPC" />
  <img src="https://img.shields.io/badge/Mooncake_Engine-313244?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9IiNmOWUyYWYiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iNyIgY3k9IjEyIiByPSI0LjUiIGZpbGw9Im5vbmUiIHN0cm9rZT0iI2Y5ZTJhZiIgc3Ryb2tlLXdpZHRoPSIxLjgiLz48Y2lyY2xlIGN4PSI3IiBjeT0iMTIiIHI9IjIiIGZpbGw9IiNmOWUyYWYiLz48Y2lyY2xlIGN4PSIxNyIgY3k9IjEyIiByPSI0LjUiIGZpbGw9Im5vbmUiIHN0cm9rZT0iI2Y5ZTJhZiIgc3Ryb2tlLXdpZHRoPSIxLjgiLz48Y2lyY2xlIGN4PSIxNyIgY3k9IjEyIiByPSIyIiBmaWxsPSIjZjllMmFmIi8+PC9zdmc+&labelColor=313244&color=313244" height="26" alt="Mooncake Engine" />
</p>

**Languages**  
<p>
  <img src="https://img.shields.io/badge/C%2B%2B-313244?style=flat&logo=c%2B%2B&logoColor=89b4fa&labelColor=313244&color=313244" height="26" alt="C++" />
  <img src="https://img.shields.io/badge/Python-313244?style=flat&logo=python&logoColor=f9e2af&labelColor=313244&color=313244" height="26" alt="Python" />
  <img src="https://img.shields.io/badge/Go-313244?style=flat&logo=go&logoColor=89dceb&labelColor=313244&color=313244" height="26" alt="Go" />
  <img src="https://img.shields.io/badge/Rust-313244?style=flat&logo=rust&logoColor=fab387&labelColor=313244&color=313244" height="26" alt="Rust" />
  <img src="https://img.shields.io/badge/Bash-313244?style=flat&logo=gnubash&logoColor=a6e3a1&labelColor=313244&color=313244" height="26" alt="Bash" />
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
