import React from 'react';

function Card({ title, footer, children }) {
  return (
    <div ClassName="Card">
        <h2>{title}</h2>
        
        <div ClassName="Card-Content">
            {children}
        </div>
        <p ClassName="Card-Footer"> {footer}</p>
    </div>
  );
}

export default Card;