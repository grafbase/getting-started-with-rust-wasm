# Getting Started With Rust and WebAssembly

<p align="center">
  <img width="600" alt="A design with Rust's Ferris and the WebAssembly logo" src=https://github.com/grafbase/getting-started-with-rust-wasm/assets/14347895/384e5505-d68d-466a-a280-5fd95eb52853"></img>
</p>

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
