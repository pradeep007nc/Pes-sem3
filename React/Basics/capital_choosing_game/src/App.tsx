import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";
import "./App.css";
import DemoComponent from "./components/demo-component";

// function CountryCapitalGame({data} : {data: Record<string, string>}) {

//   const countries = Object.keys(data);
//   const capitals = Object.values(data);
//   const options = [...countries, ...capitals];

//   return (
//   <>{options.map((data) => (
//       <button className='btn btn-primary'>{data}</button>
//     ))}
//   </>
//   );
// }

function App() {
  const [temp, add] = useState(5);

  function onAdd() {
    add(temp + 1);
  }

  function handleClick() {
    console.log("miamor");
  }

  const isLoggedIn = () => false;

  return (
    <>
      {/* <CountryCapitalGame data={{Germany: 'Berlin', India: 'Delhi'}}/> */}
      <p>Hi {temp} </p>
      {/* using hooks */}
      <button onClick={onAdd}>Add</button>
      <p>value changed {temp} </p>
      <DemoComponent onClick={handleClick} isLoggedIn={isLoggedIn} />
    </>
  );
}

export default App;
