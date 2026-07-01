<p align="center">
  <a href="https://git.io/typing-svg">
    <img
      src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=22&duration=2600&pause=900&color=4F8CC9&center=true&vCenter=true&width=860&lines=LLM+serving+systems;KV+cache+behavior+and+runtime+boundaries;Mooncake+TransferEngine+and+SGLang+paths;Backend+performance+on+heterogeneous+accelerators"
      alt="Typing animation: LLM serving systems, KV cache behavior, Mooncake TransferEngine, SGLang paths, and heterogeneous accelerators"
    />
  </a>
</p>

# Reese

I build backend and inference-serving systems where runtime boundaries, cache
behavior, and accelerator backends matter.

Beijing, China | Baidu AI Computing | Large-model inference engines

## Now

- Improving inference engine performance for large-model serving.
- Tracing request lifecycle, scheduler/router boundaries, prefix cache, and
  KV-cache behavior across prefill/decode paths.
- Studying Mooncake TransferEngine integration points: KV transfer planning,
  descriptor/checksum paths, readiness checks, and runtime boundaries.
- Tuning backend paths across NVIDIA GPUs and Kunlunxin P-series accelerators.

## Focus

```text
Runtime      SGLang-style request lifecycle, scheduler/router boundaries
Memory       prefix cache, KV cache, residency, hit behavior, pressure
Transfer     Mooncake TransferEngine, KV transfer planning, readiness checks
Backends     NVIDIA GPUs, Kunlunxin P-series, heterogeneous accelerator paths
Systems      Rust, C/C++, Go, Linux, epoll, Paxos, Docker, Kubernetes
Tooling      perf, tracing, benchmarking, CI, observability, hardening
```

## Selected Work

- [SGLang Rust runtime exploration](https://github.com/imReese/sglang-rs) -
  Rust-first LLM serving experiments around router, scheduler, protocol,
  tokenizer, cache, worker, and PD-style KV-transfer boundaries.
- [Mooncake TransferEngine reading notes](https://imreese.github.io/blogs/mooncake-transfer-engine-reading-notes) -
  architecture notes around Store dataflow, Transfer Engine, KV transfer
  planning, descriptors, and SGLang/vLLM/LMCache integration paths.
- [Personal homepage](https://imreese.github.io/) - projects, blogs, about
  page, and longer-form engineering notes.

## Stack

<p>
  <img src="img/Python.svg" alt="Python" height="34" />
  <img src="img/C.svg" alt="C and C++" height="34" />
  <img src="img/Docker.svg" alt="Docker" height="34" />
  <img src="img/git.svg" alt="Git" height="34" />
  <img src="img/VS Code.svg" alt="VS Code" height="34" />
</p>

`Rust` | `C/C++` | `Go` | `Python` | `Linux` | `SGLang` | `KV Cache` |
`Mooncake TE` | `gRPC` | `Docker` | `Kubernetes` | `perf`

## Elsewhere

- Website: [imreese.github.io](https://imreese.github.io/)
- Blogs: [Engineering notes and field logs](https://imreese.github.io/blogs)
- Email: [reese_duan@outlook.com](mailto:reese_duan@outlook.com)
