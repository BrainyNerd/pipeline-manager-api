import React from "react";
import Hello from "./Hello";

require('../css/style.css');

import HeaderBackgroundImage from '../images/header.jpg';

export default class App extends React.Component {
    constructor(props) {
        super(props);
    }
    addHeaderImg() {
        let headerBg = new Image();
        headerBg.src = HeaderBackgroundImage;
    }

    render () {
        return (
            <div>
                <div className='header-contents'>
                <p>Welcome</p>
                {this.addHeaderImg()}
                <Hello className='home' name='sai' />
                </div>
            </div>
        );
    }
}
