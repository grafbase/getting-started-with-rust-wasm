# Getting Started With Rust and WebAssembly

This repository contains code relating to an upcoming blog post

# Setup

- [Install Rust](https://www.rust-lang.org/learn/get-started)
- [Install Node.js](https://nodejs.dev/)
- [Install `wasm-pack`](https://rustwasm.github.io/wasm-pack/installer/)
  - Alternatively, install [`cargo-make`](https://github.com/sagiegurari/cargo-make) - `cargo install cargo-make`

# Usage

## Node.js

### With `wasm-pack`

- `wasm-pack build --target nodejs` - Builds and generates bindings for `src/lib.rs`
- `node public/node/index.mjs` - Runs `index.mjs`

### With `cargo-make`

- `cargo make build-node` - Builds and generates bindings for `src/lib.rs`
- `cargo make run-node` - Runs `index.mjs`
