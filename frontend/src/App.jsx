import { useEffect, useState } from 'react'
import './App.css'

function App() {
	const [message, setMessage] = useState('Loading...')
	const [timestamp, setTimestamp] = useState('')

	useEffect(() => {
		fetch('/api/hello')
			.then(res => res.json())
			.then(data => {
				setMessage(data.message)
				setTimestamp(data.timestamp)
			})
			.catch(() => {
				setMessage('Failed to connect to backend')
			})
	}, [])

	return (
		<div className='container'>
			<h1>Diploma DevOps Project</h1>
			<p>
				<strong>Backend response:</strong> {message}
			</p>
			<p>
				<strong>Timestamp:</strong> {timestamp}
			</p>
		</div>
	)
}

export default App
