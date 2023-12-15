import React, { useEffect, useState } from 'react'

const UseEffect = () => {

  const [data, setData] = useState(0);
  
  //the array is the dependencies which is passed whenever there is change in event in that button this effect is triggered
  useEffect(() => {
    console.log('load')
    return () => console.log('im created')
  }, [data])

    return (
    <div>
      <button onClick={() => setData(data + 1)}>click me nigga</button>
    </div>
  )
}

export default UseEffect;
