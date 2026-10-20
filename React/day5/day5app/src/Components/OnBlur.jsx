import { useState } from "react";

function App() {
  const [name, setName] = useState("");
  const [result, setResult] = useState("");

  const handleBlur = () => {
    setResult(name);
  };

  return (
    <div>
      <h2> Blur Event</h2>

      <input
        type="text"
        onChange={(e) => setName(e.target.value)}
        onBlur={handleBlur}
        placeholder="Enter Name"
      />

      <h3>{result}</h3>
    </div>
  );
}

export default App;