import React,{ createContext } from 'react';
import './App.css';
import Context from './components/Context';
import UseEffect from './components/UseEffect';
import Hooks from './components/hooks';
import { HooksClass } from './components/hooks2';

// Define the context and provide initial values
const moods = {
  happy: 'I am happy',
  sad: 'I am sad',
};

const MoodContext = createContext(moods);

class ParentComponent extends React.Component {
  render() {
    return (
      <div>
        <h1>Parent Component</h1>
        {this.props.children}
      </div>
    );
  }
}

function App() {
  return (
    <>
      <MoodContext.Provider value={moods.happy}>
        <Hooks />
        <HooksClass />
        <UseEffect />
        <Context />
      </MoodContext.Provider>
      <ParentComponent>
        <p>im child</p>
      </ParentComponent>
    </>
  );
}

export default App;
