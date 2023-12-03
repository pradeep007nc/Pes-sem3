import React, { ReactNode } from "react";
import {StateComponent} from "../src/components2/StateComponent";

class App extends React.Component {
  state = {
    time: 1,
  };

  incrementTime = () => {
    this.setState(() => ({
      time: this.state.time + 1,
    }));
  };

  timer = () => {
    setTimeout(() => {
      this.incrementTime();
    }, 10);
  };

  obj: any = {
    a: 1,
    b: 2,
    c: 3,
  };

  render(): ReactNode {
    return (
      <>
        <h1>{this.state.time}</h1>
        <button onClick={this.timer} onMouseEnter={this.incrementTime}>
          Click Me
        </button>

        <ul>
          {Object.keys(this.obj).map((data: string) => { 
            return <li>{data} {this.obj[data]}</li>
          })}
        </ul>

        <StateComponent/>
      </>
    );
  }
}

export default App;
