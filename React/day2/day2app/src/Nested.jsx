import React from "react";

function Child() {
  return (
    <div>
      <h3>Child Component</h3>
      <p>This is the child component.</p>
    </div>
  );
}

function Nested() {
  return (
    <div>
      <h2>Nested Component</h2>
      <p>This is the parent component.</p>

      <Child />
    </div>
  );
}

export default Nested;