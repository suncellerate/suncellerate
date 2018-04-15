/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import React from 'react';
import '../components/App.css';
import LandingPage from '../components/LandingPage.jsx';
import InvestorPage from '../components/InvestorPage.jsx'

console.log('Hello World from Webpacker')
// Support component names relative to this directory:
var componentRequireContext = require.context("components", true)
var ReactRailsUJS = require("react_ujs")
ReactRailsUJS.useContext(componentRequireContext);

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      route: 'landing',
    }
  }
  render() {
    return (
      <div className="App">
        {<LandingPage route={this.state.route} updateRoute={this.updateRoute.bind(this)}/>}
        {/*<InvestorPage/>*/}
        <footer>
          <a href="#"> Contact </a>
          <a href="#"> About </a>
          <a href="#"> Legal </a>
        </footer>
      </div>
    );
  }
  updateRoute(route) {
    this.setState({route})
  }
}

export default App;

