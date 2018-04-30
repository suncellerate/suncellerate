var $ = require('jquery')

import React from 'react';
import SearchResults from './SearchResults.jsx'
import DetailedView from './DetailedView.jsx'
import image1 from './home_1.jpg'
import image2 from './home_2.jpg'
import image3 from './home_3.jpg'


class Search extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      listings: [],
      view: 'search',
      clickedListing: null
    }
  }
  componentDidMount(){
    $.ajax({
        method: "GET",
        url: "/projects/search/38/-122/30" //TODO: Query based on zip code
      })
      .done(function(data){
        this.setState({ listings: data });
      }.bind(this));
  }

  handleClick(listing) {
    console.log('clicked listing', listing)
    this.setState({
      view: 'detailedView',
      clickedListing: listing
    })
  }

  render() {
    const searchView = this.state.view === 'search' ?
          <SearchResults listings={this.state.listings} handleClick={this.handleClick.bind(this)}/>
        : null
    const detailedView = this.state.view ==='detailedView' ? <DetailedView listing={this.state.clickedListing}/> : null

    return (
      <div>
      {searchView}
      {detailedView}
      </div>
      )
   }
}

export default Search;