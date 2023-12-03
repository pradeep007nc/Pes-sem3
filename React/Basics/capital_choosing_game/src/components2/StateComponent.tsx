import React, { Component } from "react";

interface StateComponentState {
    message: string;
}

export class StateComponent extends Component<{}, StateComponentState> {
  constructor(props: any) {
    super(props);
    this.state = {
      message: 'mama mia'
    };
  }

   private states: boolean = false;

  changeMessage() {
    if (this.states) {
      this.setState({
        message: 'hello'
      });
      this.states = false;
    } else {
      this.setState({
        message: 'world'
      });
      this.states = true;
    }
  }

  render() {
    return (
      <div>
        <h1>{this.state.message}</h1>
        <button onClick={() => this.changeMessage()}>Change Message</button>
      </div>
    );
  }
}
