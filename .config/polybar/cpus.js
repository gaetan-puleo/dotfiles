const os = require('os');

console.log(os.cpus().map((cpu, i) => `${i+1}: ${(cpu.speed / 1000).toFixed(1)}GHz`).join(' '))
