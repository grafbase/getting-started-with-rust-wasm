import { greeter } from "../build/getting_started_with_rust_wasm.js";

const greeting = await greeter("Grafbase");

console.log({ greeting });
