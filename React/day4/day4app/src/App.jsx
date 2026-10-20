import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import Card from './Components.jsx/Card'
import Product from './Components.jsx/Product'
import StudentResult from './Components.jsx/StudentResult'

function App() {
  const [count, setCount] = useState(0)

  return (
    <div className="container">
      

      {/* 1.Cord Component */}
      <h2>1.Card Component</h2>

        <div className="cards">
          <Card title="product" footer="999">
            <p>This is Great Product.</p>
          </Card>

          <card title="About" footer="About Us">
            <p>We are Learning React.</p>
          </card>

          <card title="Contact" footer="Contact Us">
            <p>Email : akash123@gmail.com</p>
          </card>
        </div>


              {/* 2.Student Result */}
              <StudentResult />

              {/* 3.Product */}
              <Product />





    </div>
   
     )
}

export default App
