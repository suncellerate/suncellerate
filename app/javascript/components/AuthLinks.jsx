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
        <span>
        <a href="/users/sign_up">Sign Up</a>
        <a href="/users/sign_in">Sign In</a>
        </span>
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