import React, { useState } from 'react'


//new way using hooks
const Hooks = () => {
  
    const [state, setState] = useState({count: 20});
  
    const obj = {
      name: 'pradeep',
      age: 21
    };
  

    return (
    <div>
      <h1 onClick={() => setState({count: state.count+1})}>{state.count}</h1>
      <ul>
        {Object.keys(obj).map(
          (data) => <li>{obj[data]}</li>
        )}
      </ul>
    </div>
  )


}

export default Hooks;
