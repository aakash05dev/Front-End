import { Component, useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'

import Employee from './Components/Employee';
import Customer from './Components/Customer';
import Product from './Components/Product';
import './App.css'

function App() {
  return (
    <div>
      <Employee />
      <Customer />
      <Product />
    </div>
  );
}

export default App;