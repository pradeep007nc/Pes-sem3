import React from 'react'

interface Props{
    disabled: boolean;
    text: string;
}

const Button2: React.FC<Props> = ({disabled, text}) => {
  return (
    <button disabled={disabled}>{text}</button>
  );
}   


export default Button2;
