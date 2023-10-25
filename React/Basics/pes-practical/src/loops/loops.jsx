import "./loops.css";
import React from "react";

function LoopsComonent() { // Change the component name to start with an uppercase letter
  const myElement = <h1>React is {5 + 5} times better with JSX</h1>;
  const data = ["apple", "mango", "banana"];
  const data2 = ["pradeep", "Naidu", "N C"];

  return (
    <div className="App">
      <button>{myElement}</button>
      <ul>
        {data.map((item, index) => (
          <li key={index}>{item}</li>
        ))}
      </ul>

      <div>
        {data2.map((item, index) => (
          <p key={index}>{item}</p>
        ))}
      </div>
    </div>
  );
}

export default LoopsComonent; // Export with the corrected component name
