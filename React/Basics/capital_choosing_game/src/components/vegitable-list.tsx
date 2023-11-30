import React from "react";

interface Vegetable {
    id: number;
    name: string;
    color: string;
    price: number;
  }

  const VegetableTable = ({ vegetables }: {vegetables: Vegetable[]}) => {
    return (
      <table>
        <thead>
          <tr>
            <th>Name</th>

            <th>Color</th>
            <th>Price</th>
          </tr>
        </thead>
        <tbody  >
          {vegetables.map((vegetable) => (
            <tr key={vegetable.id}>
              <td>{vegetable.name}</td>
              <td>{vegetable.color}</td>
              <td>{vegetable.price}</td>
            </tr>
          ))}
        </tbody>
      </table>
    );
  };
  
  export default VegetableTable;
  
