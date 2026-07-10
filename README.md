<p align="center">
  <a href="https://git.io/typing-svg">
    <img
      src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&weight=600&size=22&duration=2600&pause=900&color=4F8CC9&center=true&vCenter=true&width=860&lines=AI+infrastructure+for+large-model+serving;Enterprise+SGLang+at+10k-accelerator+scale;KV+cache+and+PD+disaggregation;Distributed+systems+and+heterogeneous+backends"
      alt="Typing animation: AI infrastructure for large-model serving, enterprise SGLang at 10k-accelerator scale, KV cache, PD disaggregation, and heterogeneous backends"
    />
  </a>
</p>

# Reese

I build AI infrastructure for large-model serving, with a focus on production
inference engines, distributed runtime systems, and performance at cluster
scale.

Beijing, China | Baidu AI Computing · Training & Inference Engine Team |
SGLang at 10k-accelerator scale

## Now

- Supporting enterprise SGLang deployment across 10k-accelerator clusters.
- Improving inference runtime performance across scheduling, batching,
  prefill/decode execution, KV cache, and heterogeneous backend paths.
- Working on PD disaggregation and KV movement through Mooncake
  TransferEngine.
- Diagnosing throughput, latency, memory, cache, and transfer bottlenecks in
  production serving systems.

## Focus

```text
Serving      enterprise SGLang deployment at 10k-accelerator scale
Runtime      request lifecycle, scheduling, batching, prefill/decode
Memory       prefix cache, KV cache, residency, memory hierarchy
Transfer     PD disaggregation, KV movement, Mooncake TransferEngine
Backends     heterogeneous accelerator serving paths
Reliability  profiling, observability, fault diagnosis, validation
```

## Background

Before Baidu, I worked on cloud workload characterization and CPU architecture
at Huawei Cloud's Shuhai Lab, and on distributed-storage control-plane systems
at Huawei Data Storage.

## Selected Work

- [sglang-rs](https://github.com/imReese/sglang-rs) - an independent Rust
  runtime covering request lifecycle, gRPC routing, scheduling, prefix caching,
  KV page allocation, and PD KV-transfer boundaries.
- [NexusKV](https://github.com/imReese/NexusKV) - a KV cache platform that
  separates control plane, data plane, state/index, and engine-adapter concerns
  across Go, Rust, and Python.
- [Engineering notes](https://imreese.github.io/blogs/) - source-level notes on
  SGLang runtime, HiCache, Mooncake Store/TransferEngine, and distributed
  systems.
- [Personal homepage](https://imreese.github.io/) - projects, writing, and
  background.

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
- Blogs: [Engineering notes](https://imreese.github.io/blogs/)
- Email: [reese_duan@outlook.com](mailto:reese_duan@outlook.com)
