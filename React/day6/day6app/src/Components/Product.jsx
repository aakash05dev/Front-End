import { useState } from "react";

function App() {
  const [product, setProduct] = useState({
    id: 101,
    name: "Laptop",
    price: 50000
  });

  const changeProduct = () => {
    setProduct({
      id: 102,
      name: "Mobile",
      price: 25000
    });
  };

  return (
    <div>
      <h2>Product Information</h2>

      <p>Product ID: {product.id}</p>
      <p>Product Name: {product.name}</p>
      <p>Product Price: {product.price}</p>

      <button onClick={changeProduct}>
        Change Product
      </button>
    </div>
  );
}

export default App;