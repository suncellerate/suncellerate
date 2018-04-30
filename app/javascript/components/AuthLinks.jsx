import React from 'react';
import SignOutLink from './SignOutLink.jsx'

var $ = require('jquery')

class AuthLinks extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      signedIn: 'false'
    }
  }

  componentDidMount(){
    $.ajax({
        method: "GET",
        url: "/auth/is_signed_in.json"
      })
      .done(function(data){
        this.setState({ signedIn: data.signed_in });
      }.bind(this));
  }

  render () {
    if (this.state.signedIn == 'false'){
      return (
        //This gives us 2 ULs, but for some reason react crashes if given two anchor
        //tags here not wrapped in some other tag e.g. ul, div, or span.
        <ul className={`navbar-nav ml-auto`}>
        <li><a className={`nav-link`} href="/users/sign_up">Sign Up</a></li>
        <li><a className={`nav-link`} href="/users/sign_in">Sign In</a></li>
        </ul>
      );
    }
    else {
      return (
        <span>{<SignOutLink />}</span>
      );
    }
  }

}

export default AuthLinks;