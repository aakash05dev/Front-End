import React from "react";

function Button(props) {

    let buttonStyle = {
        backgroundColor: props.color,
        color: "white",
        padding:
            props.size === "small"
                ? "5px 10px"
                : props.size === "large"
                ? "15px 30px"
                : "10px 20px",
        border: "none",
        margin: "10px",
        cursor: "pointer"
    };

    return (
        <button style={buttonStyle}>
            {props.children}
        </button>
    );
}

export default Button;