import { useState } from "react";

function App() {
  const [message, setMessage] = useState("");

  const handleClick = () => {
    setMessage("Button Clicked");
  };

  const handleDoubleClick = () => {
    setMessage("Button Double Clicked");
  };

  const handleMouseOver = () => {
    setMessage("Mouse Over");
  };

  return (
    <div>
      <h2> Multiple Events</h2>

      <button
        onClick={handleClick}
        onDoubleClick={handleDoubleClick}
        onMouseOver={handleMouseOver}
      >
        Click / Double Click / Mouse Over
      </button>

      <h3>{message}</h3>
    </div>
  );
}

export default App;