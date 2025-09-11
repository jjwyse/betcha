import { Link, Routes, Route } from 'react-router-dom'
import './App.css'
import SignIn from './pages/SignIn.jsx'
import SignUp from './pages/SignUp.jsx'

function App() {
  return (
    <div>
      <h1>Betcha</h1>
      <nav style={{ display: 'flex', gap: '1rem' }}>
        <Link to="/sign-in">Sign in</Link>
        <Link to="/sign-up">Sign up</Link>
      </nav>
      <Routes>
        <Route path="/" element={<div><h2>Welcome</h2></div>} />
        <Route path="/sign-in" element={<SignIn />} />
        <Route path="/sign-up" element={<SignUp />} />
      </Routes>
    </div>
  )
}

export default App
