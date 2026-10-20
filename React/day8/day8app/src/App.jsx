import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'

import { BrowserRouter, Routes, Route, Link } from "react-router-dom";

function Navbar() {
  return (
    <nav>
      <Link to="/">Home</Link> |{" "}
      <Link to="/products">Products</Link> |{" "}
      <Link to="/reports">Reports</Link> |{" "}
      <Link to="/about">About</Link> |{" "}
      <Link to="/contact">Contact</Link>
    </nav>
  );
}

function Home() {
  return(
    <div>
   <h2>Home Page</h2>
   <p>Welcome to our website</p>
   </div>
   )
}

function Products() {
  return(
    <div>
   <h2>Prodects Page</h2>
   <p>We offer a very of quality Products to meet your need.</p>
   </div>
   )
}

function Reports() {
  return(
    <div>
   <h2>Reports Page</h2>
   <p>View our latest reporter and important information here.</p>
   </div>
   )
}

function About() {
  return(
    <div>
   <h2>About Page</h2>
   <p>Learn to about our company, services, and team</p>
   </div>
   )
}
function Contact() {
  return(
    <div>
   <h2>Contact Page</h2>
   <p>Countact us for any questions, support or more information</p>
   </div>
   )
}

function App() {
  return (
    <BrowserRouter>
      <Navbar />

      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/products" element={<Products />} />
        <Route path="/reports" element={<Reports />} />
        <Route path="/about" element={<About />} />
        <Route path="/contact" element={<Contact />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;