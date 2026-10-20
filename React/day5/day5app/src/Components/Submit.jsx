import { useState } from "react";

function App() {
  const [name, setName] = useState("");
  const [result, setResult] = useState("");

  const submit = () => {
    setResult(name);
  };

  return (
    <div>
      <h2>Submit Event</h2>

      <input
        type="text"
        onChange={(e) => setName(e.target.value)}
        placeholder="Enter Name"
      />

      <button onClick={submit}>Submit</button>

      <h3>{result}</h3>
    </div>
  );
}

export default App;