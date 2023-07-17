const fs = require('fs')

const temp = fs.readFileSync('/sys/class/thermal/thermal_zone0/temp', 'utf-8')
console.log(temp/1000)
