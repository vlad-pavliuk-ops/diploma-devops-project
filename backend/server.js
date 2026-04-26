const express = require('express')
const cors = require('cors')

const app = express()
const PORT = process.env.PORT || 5000

app.use(cors())
app.use(express.json())

app.get('/api/hello', (req, res) => {
	res.json({
		message: 'Hello from backend',
		timestamp: new Date().toISOString(),
	})
})

app.get('/api/health', (req, res) => {
	res.status(200).json({ status: 'ok' })
})

app.listen(PORT, '0.0.0.0', () => {
	console.log(`Backend is running on port ${PORT}`)
})
