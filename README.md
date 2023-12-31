<h1 align="center">Getting Started With Rust and WebAssembly</h1>

<p align="center">
  <img width="600" alt="A design with Rust's Ferris and the WebAssembly logo" src=https://github.com/grafbase/getting-started-with-rust-wasm/assets/14347895/384e5505-d68d-466a-a280-5fd95eb52853" /><br /><br />
  Rust ➡ WebAssembly for Webpack, Node.js and Deno<br />See <a href="https://grafbase.com/blog/getting-started-with-rust-and-webassembly">Getting started with Rust and WebAssembly</a>
</p>

# Try It Out

<a href="https://codesandbox.io/p/sandbox/github/grafbase/getting-started-with-rust-wasm"><img alt="CodeSandbox: getting-started-with-rust-wasm" src="https://img.shields.io/badge/CodeSandbox-getting--started--with--rust--wasm-866eff?labelColor=343434" /></a>

# Setup

## Webpack

- [Install Rust](https://www.rust-lang.org/learn/get-started)
- [Install Node.js](https://nodejs.org/)
- [Install `wasm-pack`](https://rustwasm.github.io/wasm-pack/installer/)
- Run `npm install`

## Node.js

- [Install Rust](https://www.rust-lang.org/learn/get-started)
- [Install Node.js](https://nodejs.org/)
- [Install `wasm-pack`](https://rustwasm.github.io/wasm-pack/installer/)
  - Alternatively, [install `cargo-make`](https://github.com/sagiegurari/cargo-make#installation)

## Deno

- [Install Rust](https://www.rust-lang.org/learn/get-started)
- [Install Node.js](https://nodejs.org/)
- [Install `cargo-make`](https://github.com/sagiegurari/cargo-make#installation)

## With Nix

1. [Install Nix](https://nixos.org/download.html)
2. [Activate Flakes](https://nixos.wiki/wiki/Flakes)
3. [Install direnv](https://direnv.net/)
4. [Install nix-direnv](https://github.com/nix-community/nix-direnv)
5. Add the following `.envrc` file:

   ```sh
   use flake  # activates the flake
   dotenv_if_exists .env  # optionally loads a .env file if it exists
   ```

6. Run `direnv allow .` inside the project directory to allow Direnv to execute the `.envrc`
7. For Webpack, also run `npm install`

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
