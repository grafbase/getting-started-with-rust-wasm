const wasm = import('../pkg');

wasm
  .then(({ greeter }) => greeter('Grafbase'))
  .then((greeting) => (document.getElementById('greeter').innerText = greeting))
  .catch(console.error);
