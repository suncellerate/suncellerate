import React from 'react';
var $ = require('jquery')

class AuthLinks extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      signedIn: 'false'
    }
  }

  componentWillMount(){
    $.ajax({
        method: "GET",
        url: "/auth/is_signed_in.json"
      })
      .done(function(data){
        this.setState({ signedIn: data.signed_in });
      }.bind(this));

  }

  render () {
    console.log(this)
    if (this.state.signedIn == 'true'){
      return (
        <div> YO </div>
      );
    }
    else {
      return (
        <div> NO </div>
      );
    }

  }
}

export default AuthLinks;