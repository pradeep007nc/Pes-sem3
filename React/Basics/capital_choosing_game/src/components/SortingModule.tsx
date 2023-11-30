import React, { useState } from 'react'

const SortingModule = () => {

    let [items, setItems] = useState([1, 2, 3]);



    const handleClick = () => {
        setItems([...items].reverse());
    }

    return (
        <div>
          <ul>
            {
              items.map((data) => <li>{data}</li>)
            }
          </ul>

          <button onClick={handleClick}>click me nigga to reverse</button>
        </div>
      )
    }      

export default SortingModule;
