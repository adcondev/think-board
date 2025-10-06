const express = require('express')
const cors = require('cors')
const app = express()
const port = process.env.API_PORT || 5000

// Enable CORS for all routes, with allowed origin configurable via environment variable
const allowedOrigin = process.env.CORS_ORIGIN || 'http://frontend:3000';
app.use(cors({
    origin: allowedOrigin,
    credentials: true
}))

app.get('/', (req, res) => {
    res.send('Hello World!')
})

app.listen(port, '0.0.0.0', () => {
    console.log(`Example app listening on port ${port}`)
})