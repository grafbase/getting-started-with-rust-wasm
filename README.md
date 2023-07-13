# Getting Started With Rust and WebAssembly

This repository contains code relating to an upcoming blog post

# Try It Out

![CodeSandbox: getting-started-with-rust-wasm](https://img.shields.io/badge/CodeSandbox-getting--started--with--rust--wasm-866eff?labelColor=343434&link=https://codesandbox.io/p/sandbox/github/grafbase/getting-started-with-rust-wasm)

# Setup

## Webpack

- [Install Rust](https://www.rust-lang.org/learn/get-started)
- [Install Node.js](https://nodejs.dev/)
- [Install `wasm-pack`](https://rustwasm.github.io/wasm-pack/installer/)
  - Alternatively, install [`cargo-make`](https://github.com/sagiegurari/cargo-make) - `cargo install cargo-make`

## Node.js

- [Install Rust](https://www.rust-lang.org/learn/get-started)
- [Install Node.js](https://nodejs.dev/)
- [Install `wasm-pack`](https://rustwasm.github.io/wasm-pack/installer/)
  - Alternatively, install [`cargo-make`](https://github.com/sagiegurari/cargo-make) - `cargo install cargo-make`

## Deno

- [Install Rust](https://www.rust-lang.org/learn/get-started)
- [Install Node.js](https://nodejs.dev/)
- Install [`cargo-make`](https://github.com/sagiegurari/cargo-make) - `cargo install cargo-make`

# Usage

## Node.js

### With `wasm-pack`

1. `wasm-pack build --target nodejs` - Builds and generates bindings for `src/lib.rs`
2. `node src/node.mjs` - Runs `src/node.mjs`

### With `cargo-make`

- `cargo make run-node` - Runs `src/node.mjs`

## Webpack

1. `npm run serve`
2. Open [http://localhost:8080](http://localhost:8080/)

## Deno

- `cargo make run-deno` - Runs `src/deno.ts`
