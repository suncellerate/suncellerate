import React from 'react';

class SocialHeader extends React.Component {
  render () {
    return (
      <div id="social-header">
      	<div id="social-header-links">
	        <i className={`fa fa-twitter`}></i>
	        <i className={`fa fa-google-plus`}></i>
	        <i className={`fa fa-facebook`}></i>
	        <i className={`fa fa-instagram`}></i>
	    </div>
      </div>
    );
  }
}

export default SocialHeader;