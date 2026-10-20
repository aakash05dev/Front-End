import { useState, useEffect } from "react";

function App() {

  const [count, setCount] = useState(0);

  useEffect(() => {

    const timer = setInterval(() => {
      setCount(count => count + 1);
    }, 2000);

    return () => clearInterval(timer);

  }, []);

  return (
    <div>
      <h2>Timer: {count}</h2>
    </div>
  );
}

export default App;