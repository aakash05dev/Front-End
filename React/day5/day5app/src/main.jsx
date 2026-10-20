import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import Submit from './Components/Submit.jsx'
import DoubleClick from './Components/DoubleClick.jsx'
import PasingValue from './Components/PasingValue.jsx'
import MultipleEvent from './Components/MultipleEvent.jsx'
import OnBlur from './Components/OnBlur.jsx'

createRoot(document.getElementById('root')).render(
  <StrictMode>
    {/* <App /> */}
    <Submit />
    <DoubleClick />
    <PasingValue />
    <MultipleEvent />
    <OnBlur />
  </StrictMode>,
)