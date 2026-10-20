import { StrictMode } from 'react'
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.jsx'
import ProfileCard from './Components.jsx/ProfileCard.jsx'
import Button from './Botton.jsx'


createRoot(document.getElementById('root')).render(
  <StrictMode>
    {/* <App /> */}
       <div>

            <h1>React Components & Props</h1>

            <hr />

           {/* < ProfileCards /> */}

            <ProfileCard
                name="Akash"
                age={24}
                role="Python Full-stack Developer"
            >
                <p>Likes React and JavaScript.</p>
            </ProfileCard>


            <ProfileCard
                name="Kumar"
                age={24}
                role=" Designer"
            >
                <p>Likes UI Designer</p>
            </ProfileCard>


            <ProfileCard
                name="Dev"
                age={23}
                role="Tester"
            >
                <p>Likes Testing</p>
            </ProfileCard>


            <hr />

           {/* < Buttons /> */}

            <h2>Buttons</h2>

            <Button color="blue" size="small">
                Submit
            </Button>

            <Button color="green" size="medium">
                Login
            </Button>

            <Button color="red" size="large">
                Delete
            </Button>

        </div>


  </StrictMode>,
)



