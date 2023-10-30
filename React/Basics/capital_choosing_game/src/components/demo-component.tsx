import React from 'react';

interface DemoComponentProps {
  onClick: () => void;
  isLoggedIn: () => boolean;
}

const DemoComponent: React.FC<DemoComponentProps> = ({ onClick, isLoggedIn }) => {
  return (
    <div>
      <button className='btn btn-primary' onClick={onClick}>mama mia</button>
      <button title={{isLoggedIn} ? 'Welcome back' : 'Please log in'}>
        {{isLoggedIn} ? 'MyAccount' : 'Log In'}
      </button>
    </div>
  );
}

export default DemoComponent;