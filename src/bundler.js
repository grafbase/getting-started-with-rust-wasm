import { greeter } from '../pkg';

let greeting = greeter('Grafbase');

document.getElementById('greeter').innerText = greeting;
