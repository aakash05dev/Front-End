import React from 'react';

function ProductAvailability() {
  const isAvailable = true; 

  return (
    <div className="product">
        <h2>Product Availability</h2>
      <p>Mobile Phone</p>
      {isAvailable && <p> Available Now </p>}
    </div>
  );
}

export default ProductAvailability;