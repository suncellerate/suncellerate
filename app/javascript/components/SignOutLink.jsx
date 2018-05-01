import React from 'react';
var $ = require('jquery');

//https://labs.chiedo.com/blog/authenticating-your-reactjs-app-with-devise-no-extra-gems-needed/
var Functions = {
  getMetaContent: function(name) {
    var metas = document.getElementsByTagName('meta');

    for (var i=0; i<metas.length; i++) {
      if (metas[i].getAttribute("name") == name) {
        return metas[i].getAttribute("content");
      }
    }

    return "";
  }
}

class SignOutLink extends React.Component {

  _signOut(){
    $.ajax({
      method: "DELETE",
      url: "/users/sign_out",
      data: {
        authenticity_token: Functions.getMetaContent("csrf-token")
      }
    }).done(function(){
      location.reload();
    })
  }

  render () {
    return (
      <a className={`nav-link`} onClick={this._signOut}>Sign Out</a>
    );
  }
}

export default SignOutLink;