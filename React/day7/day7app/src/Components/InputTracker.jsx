import { useState, useEffect } from "react";

function App() {

  const [name, setName] = useState("");

  useEffect(() => {
    console.log("Input changed:", name);
  }, [name]);

  return (
    <div>
      <h2>Enter Your Name</h2>

      <input
        type="text"
        value={name}
        onChange={(e) => setName(e.target.value)}
        placeholder="Enter name"
      />

      <p>You entered: {name}</p>
    </div>
  );
}

export default App;