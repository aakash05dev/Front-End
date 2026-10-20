import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'

import Greating from "./Components/Greating"
import  TitleUpdater from "./Components/TitleUpdater"
import Timer from "./Components/Timer"
import UserList from "./Components/UserList"
import InputTracker from "./Components/InputTracker"

function App() {
  const [count, setCount] = useState(0)

  return (
    
  <div>

     <Greating />


   <TitleUpdater />

  <Timer />

  <UserList />

  <InputTracker />

  </div>
  )
}

export default App
