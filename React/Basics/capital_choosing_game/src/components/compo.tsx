import React from 'react'

const Compo = () => {
  return (
    <div style={{ ...c1Style.design, padding: '20px', textAlign: 'center' as TextAlign }}>
      <h1>compo</h1>
      <p>mama mia</p>
    </div>
  )
}

const c1Style = {
  title: {
    fontSize: '26px',
    color: 'blue'
  },
  design: {
    color: 'blue',
    background: 'black',
    padding: '20px',
    textAlign: 'center' as TextAlign // Cast string value to TextAlign type
  },
  description: {
    fontSize: '23px',
    color: 'black'
  }
};

export default Compo;

type TextAlign = any;
