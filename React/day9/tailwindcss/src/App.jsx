import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'

import ProfileCard from './ProfileCard'
import Navbar from './Navbar'
import ProductPage from './ProductPage'


function App() {
  const [count, setCount] = useState(0)

  
   return (
       <div className='bg-blue-300 min-h-screen'>

        <ProfileCard />

        <Navbar />

        <ProductPage />

       </div>
    );
}

export default App
