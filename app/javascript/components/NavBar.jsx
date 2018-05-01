import React from 'react';
import AuthLinks from './AuthLinks.jsx'
var $ = require('jquery')

class NavBar extends React.Component {

  render () {
    return (
      <nav className={`navbar navbar-expand-lg navbar-light bg-light`}>
        <img src={require('./suncellerate-logo-1.png')} id="navbar-logo" />
        <button className={`navbar-toggler`} type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span className={`navbar-toggler-icon`}></span>
        </button>

        <div className={`collapse navbar-collapse`} id="navbarSupportedContent">
          <ul className={`navbar-nav ml-auto`}>
            <li className={`nav-item active`}>
              <a className={`nav-link`} href="#">Home <span className={`sr-only`}>(current)</span></a>
            </li>
            <li className={`nav-item`}>
              <a className={`nav-link`} href="#">How It Works</a>
            </li>
            <li className={`nav-item`}>
              <a className={`nav-link`} href="#">Hosts</a>
            </li>
            <li className={`nav-item`}>
              <a className={`nav-link`} href="#">Invest</a>
            </li>
            <li className={`nav-item`}>
              <a className={`nav-link`} href="#">Pay It Forward</a>
            </li>
            <li className={`nav-item`}>
              <a className={`nav-link`} href="#">Contact Us</a>
            </li>

            {<AuthLinks />}

          </ul>
        </div>

      </nav>
    );
  }
}

export default NavBar;