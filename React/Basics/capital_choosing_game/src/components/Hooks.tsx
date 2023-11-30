import React, { useState } from "react";

interface Vegetable {
  id: number;
  name: string;
  color: string;
  price: number;
}

const Hooks = ({ props }: {props: Vegetable[]}) => {
  const [name] = useState("pradeep");
  const [age] = useState(21);

  

  return (
    <div>
      <p>{name}</p>
      <p>{age}</p>
      <ul>
        {props.map((vegetable) => (
          <li>
            <p>{vegetable.id}</p>
            <p>{vegetable.color}</p>
            <p>{vegetable.name}</p>
            <p>{vegetable.price}</p>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default Hooks;
