# Reese

Systems engineer focused on large-model inference serving, cache behavior, and backend performance.

Beijing | Baidu AI Computing | Inference engine performance

I work on the execution path behind LLM serving: request lifecycle, scheduler and router boundaries, prefix/KV-cache behavior, KV transfer readiness, and heterogeneous accelerator backends across NVIDIA GPUs and Kunlunxin P-series devices.

## Current Work

**Baidu AI Computing | 2025.06 - Present**

- Improving inference engine performance for large-model serving.
- Studying SGLang-style runtime paths across request intake, scheduling, prefill/decode execution, and backend dispatch.
- Analyzing prefix cache, KV-cache lifecycle, residency, hit behavior, memory pressure, and serving stability.
- Working through Mooncake TransferEngine integration points: KV transfer planning, descriptor/checksum paths, readiness checks, and runtime boundaries.
- Tuning backend paths across NVIDIA GPUs and Kunlunxin P-series accelerators.

## Systems Background

- **Huawei Cloud**: CPU architecture performance analysis, workload profiling, IPC/TLB behavior, Intel Pin tracing, ChampSim validation, and Linux perf workflows.
- **Huawei Data Storage**: distributed storage systems, high-availability cluster management, leader election, Paxos-based coordination, async initialization, fault handling, and reliability fixes.
- **Security and hardening**: DTFuzz coverage for storage interfaces, command-injection mitigation, sandboxed execution paths, and production-oriented robustness work.

## Selected Work

- **Inference engine optimization**: runtime paths, cache/KV behavior, backend execution, NVIDIA GPU paths, and Kunlunxin P-series accelerator support.
- **Mooncake TransferEngine notes**: architecture reading notes around Store dataflow, Transfer Engine, KV transfer planning, descriptors, and SGLang/vLLM/LMCache integration paths.
- **SGLang Rust runtime exploration**: Rust-first LLM serving experiments around router, scheduler, protocol, tokenizer, cache, worker, and PD-style KV-transfer boundaries.
- **Lightweight C++ web server**: non-blocking sockets, epoll, HTTP state machine, thread pool, MySQL login/register flow, and sync/async logging.
- **LeetCode automation manager**: problem parsing, description generation, code templates, test generation, and GitHub Actions workflows for algorithm practice.

## Technical Focus

```text
Runtime     SGLang, request lifecycle, scheduler/router boundaries, prefill/decode
Memory      prefix cache, KV cache, residency, hit behavior, cache pressure
Transfer    Mooncake TransferEngine, KV transfer planning, readiness checks
Backends    NVIDIA GPUs, Kunlunxin P-series, heterogeneous accelerator paths
Systems     Rust, C/C++, Go, Linux, epoll, Paxos, Docker, Kubernetes
Tooling     perf, tracing, benchmarking, CI, observability, reliability hardening
```

## Links

- Website: [imreese.github.io](https://imreese.github.io)
- Notes: [Mooncake Transfer Engine reading notes](https://imreese.github.io/blogs/mooncake-transfer-engine-reading-notes)
- Email: [reese_duan@outlook.com](mailto:reese_duan@outlook.com)
