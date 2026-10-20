import { useState } from "react";

function App() {
  const [name, setName] = useState("");
  const [result, setResult] = useState("");

  const showName = () => {
    setResult(name);
  };

  return (
    <div>
      <h2> Double Click</h2>

      <input
        type="text"
        onChange={(e) => setName(e.target.value)}
        placeholder="Enter Name"
      />

      <button onClick={showName}>Click Me</button>

      <button onDoubleClick={showName}>
        Double Click Me
      </button>

      <h3>{result}</h3>
    </div>
  );
}

export default App;