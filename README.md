# Getting Started With Rust and WebAssembly

This repository contains code relating to an upcoming blog post

# Setup

- [Install Rust](https://www.rust-lang.org/learn/get-started)
- [Install Node.js](https://nodejs.dev/)
- [Install `wasm-pack`](https://rustwasm.github.io/wasm-pack/installer/)
  - Alternatively or if you plan to use Deno, install [`cargo-make`](https://github.com/sagiegurari/cargo-make) - `cargo install cargo-make`

# Usage

## Node.js

### With `wasm-pack`

- `wasm-pack build --target nodejs` - Builds and generates bindings for `src/lib.rs`
- `node src/node.mjs` - Runs `src/node.mjs`

### With `cargo-make`

- `cargo make run-node` - Runs `src/node.mjs`

## Webpack

### With `wasm-pack`

- TBD

### With `cargo-make`

- `cargo make run-bundler` - Runs `src/bundler.js`

## Deno

### With `wasm-pack`

- Unsupported

### With `cargo-make`

- `cargo make run-deno` - Runs `src/deno.ts`
