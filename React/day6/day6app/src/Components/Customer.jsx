import { useState } from "react";

function App() {
  const [customers, setCustomers] = useState([
    "Akash",
    "Arun",
    "Kumar"
  ]);

  const addCustomer = () => {
    setCustomers([...customers, "Ravi"]);
  };

  const deleteCustomer = (name) => {
    setCustomers(
      customers.filter((customer) => customer !== name)
    );
  };

  return (
    <div>
      <h2>Customer List</h2>

      <button onClick={addCustomer}>
        Add Customer
      </button>

      {customers.map((customer, index) => (
        <p key={index}>
          {customer}

          <button onClick={() => deleteCustomer(customer)}>
            Delete
          </button>
        </p>
      ))}
    </div>
  );
}

export default App;