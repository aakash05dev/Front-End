function ProductPage() {
  return (
    <div>
      <h1>Product Page</h1>

      <div className="products">

        <div className="product-card">
          <img src="https://via.placeholder.com/150" alt="Laptop" />
          <h2>Laptop</h2>
          <p>Price: ₹50,000</p>
          <p>Rating: ⭐⭐⭐⭐⭐</p>
          <button>Add to Cart</button>
        </div>

        <div className="product-card">
          <img src="https://via.placeholder.com/150" alt="Mobile" />
          <h2>Mobile</h2>
          <p>Price: ₹25,000</p>
          <p>Rating: ⭐⭐⭐⭐</p>
          <button>Add to Cart</button>
        </div>

        <div className="product-card">
          <img src="https://via.placeholder.com/150" alt="Headphones" />
          <h2>Headphones</h2>
          <p>Price: ₹2,000</p>
          <p>Rating: ⭐⭐⭐⭐⭐</p>
          <button>Add to Cart</button>
        </div>

        <div className="product-card">
          <img src="https://via.placeholder.com/150" alt="Keyboard" />
          <h2>Keyboard</h2>
          <p>Price: ₹1,500</p>
          <p>Rating: ⭐⭐⭐⭐</p>
          <button>Add to Cart</button>
        </div>

        <div className="product-card">
          <img src="https://via.placeholder.com/150" alt="Mouse" />
          <h2>Mouse</h2>
          <p>Price: ₹800</p>
          <p>Rating: ⭐⭐⭐⭐</p>
          <button>Add to Cart</button>
        </div>

        <div className="product-card">
          <img src="https://via.placeholder.com/150" alt="Smart Watch" />
          <h2>Smart Watch</h2>
          <p>Price: ₹3,000</p>
          <p>Rating: ⭐⭐⭐⭐⭐</p>
          <button>Add to Cart</button>
        </div>

      </div>
    </div>
  );
}

export default ProductPage;