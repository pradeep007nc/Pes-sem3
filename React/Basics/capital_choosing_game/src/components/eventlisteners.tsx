import React from 'react';

const Eventlisteners = () => {

    const click = () => {
        const inputData = document.getElementById('milf') as HTMLInputElement;
        console.log('ive been clicked');
        if (inputData) {
          console.log(inputData.value);
          onRender();   
        } else {
          console.log('data hako gujad');
        }
      };

      const change = () => {
        console.log('ive changed');
      } 

      const blur = () => {
        console.log('ive blurred');
      }

      const onRender = () => {
        return <input type="text"  onChange={change} onBlur={blur}/>
      }

  return (
    <div>
      <input type="text" id='milf' onClick={click} onBlur={blur}/>
      <button onClick={onRender}>click me niggga</button>
    </div>
  );
};

export default Eventlisteners;
