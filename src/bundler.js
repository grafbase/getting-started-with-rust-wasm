import { greeter } from '../pkg';

let greeting = greeter('Grafbase');

document.getElementById('root').innerText = greeting;
