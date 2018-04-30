import React from 'react';
import './App.css';
import LandingPage from './LandingPage.jsx';
import InvestorPage from './InvestorPage.jsx';
import NavBar from './NavBar.jsx';
import SocialHeader from './SocialHeader.jsx'
import Footer from './Footer.jsx'

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
        {<SocialHeader />}
        {<NavBar />}
        <div className={`container`}>
        {<LandingPage route={this.state.route} updateRoute={this.updateRoute.bind(this)}/>}
        </div>
        {/*<InvestorPage/>*/}
        {<Footer />}
      </div>
    );
  }
  updateRoute(route) {
    this.setState({route})
  }
}

export default App;

