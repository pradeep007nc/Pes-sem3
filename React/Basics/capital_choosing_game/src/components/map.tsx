import React from 'react'

const MapComponent = () => {

  const data = [
    {id: 1, name: "Pradeep"},
    {id: 2, name: "hello"},
    {id: 3, name: "mian"},
    {id: 4, name: "hola"},
  ]

  return (
    <div>
        {data.map((user) => (
          <p key={user.id}>
            {user.id}
            {user.name}
          </p>
        ))}
      </div>
  )
}

export default MapComponent;
