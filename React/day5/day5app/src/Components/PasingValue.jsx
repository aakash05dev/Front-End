function App() {

  const showName = (name) => {
    alert("Hello " + name);
  };

  return (
    <div>
      <h2>Q3 - Passing Value to Event</h2>

      <button onClick={() => showName("Akash")}>
        Click Me
      </button>
    </div>
  );
}

export default App;