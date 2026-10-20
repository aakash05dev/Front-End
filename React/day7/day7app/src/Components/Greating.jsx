import { useEffect } from "react";

function App() {

    useEffect(() => {
        alert("Welcome to React!");


    }, []);

    return(
        <div>
            <h2>My React App</h2>
        </div>
    );
}

export default App;