import React from 'react';
import Listing from './Listing.jsx'


const SearchResults = (props) => {
  return (
	<div className={`row`}>
		{props.listings.map(listing => {
 		return <Listing listing={listing} handleClick={props.handleClick}/>
		})}
	</div>
    )
}

export default SearchResults;