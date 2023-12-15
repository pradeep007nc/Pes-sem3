import React from "react";

export class HooksClass extends React.Component{
    constructor(props){
        super(props);
        this.state = {
            count: 10
        };
    }

    render(){
        return(
            <>
                <h1>{this.state['count']}</h1>
            </>
        )
    }
}   