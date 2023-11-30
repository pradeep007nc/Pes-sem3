import { useState } from "react";
import React from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min";
import "./App.css";
import Eventlisteners from "./components/eventlisteners";
import SortingModule from "./components/SortingModule";
import Events2 from "./components/events2";
import Compo from "./components/compo";
import DemoComponent from "./components/demo-component";
import Button2 from "./components/button2";
import MapComponent from "./components/map";
import ProfileComponent from "./components/props-demo";
import VegetableTable from "./components/vegitable-list";
import TableComponent from "./components/table-component";
// import Hooks from "./components/Hooks";
import TodoComponent from "./components/todo/TodoComponent";
import Hooks from "./components/Hooks";
import Validation from "./components/validation";

function CountryCapitalGame({data} : {data: Record<string, string>}) {

  const countries = Object.keys(data);
  const capitals = Object.values(data);
  const options = [...countries, ...capitals];

  return (
  <>{options.map((data) => (
      <button className='btn btn-primary'>{data}</button>
    ))}
  </>
  );
}

interface Vegetable {
  id: number;
  name: string;
  color: string;
  price: number;
}

function App() {
  const [temp, add] = useState(5); 

  function handleClick() {
    console.log("miamor");
  }



  const isLoggedIn = () => false;

  const vegetables: Vegetable[] = [
    { id: 1, name: "naved bete", color: "Orange", price: 2.5 },
    { id: 2, name: "naved lodu", color: "Red", price: 1.5 },
    { id: 3, name: "suraj thin", color: "Brown", price: 0.5 },
  ];

  return (
    <>
      <CountryCapitalGame data={{Germany: 'Berlin', India: 'Delhi'}}/>
      <p>Hi {temp} </p>
      using hooks
      <button onClick={() => {add(temp+1)}}>Add</button>
      <p>value changed {temp} </p>
      <DemoComponent onClick={handleClick} isLoggedIn={isLoggedIn} />
      <Button2 disabled={true} text="Disabled Button" />
      <MapComponent />
      <ProfileComponent />
      <VegetableTable vegetables={vegetables} />
      <TableComponent />
      <Hooks props={vegetables}/>
      <TodoComponent />
      <Eventlisteners />
      <SortingModule />
      <Events2 />
      <Compo />
      <Validation email={"mail.com"}/>
    </>
  );
}

export default App;
