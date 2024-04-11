const express = require('express')
const app = express()
const port = process.env.PORT || 3000

app.get('/', (req, res) => {
  res.send(process.env.SUPER_SECRET || 'not set')
});

app.listen(port, () => {
  console.log(`Server listening at http://localhost:${port}`)
})

process.on('SIGINT', () => {
    console.log('Received SIGINT. Exiting...')
    process.exit()
  })