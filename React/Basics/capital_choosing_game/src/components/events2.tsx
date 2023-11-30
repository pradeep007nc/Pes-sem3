import React from 'react';

const Events2 = () => {
  const handleKeyDown = (event: any) => {
    console.log(`Key ${event.key} pressed`);
  };

  return (
    <div onKeyDown={handleKeyDown}>
      <button onClick={(e) => console.log(e + ' clicked')}>Click Me</button>
      <p>Press any key to detect it.</p>
    </div>
  );
};

export default Events2;
