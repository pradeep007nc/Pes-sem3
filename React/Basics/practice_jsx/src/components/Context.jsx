import React, { createContext, useContext } from 'react';

const moods = {
  happy: 'I am happy',
  sad: 'I am sad',
};

const MoodContext = createContext(moods);

const Context = () => {
    const currentMood = useContext(MoodContext);
  
    return (
      <div>
        <p>Current Mood:</p>
        <ul>
          {Object.keys(currentMood).map((key) => (
            <li key={key}>{currentMood[key]}</li>
          ))}
        </ul>
      </div>
    );
  };
  

export default Context;