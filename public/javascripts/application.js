// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//
jQuery(function ($) {

  $('#comment_click').click(function() {
    $('#comments').slideToggle('slow', function() {
      // Animation complete.
      //console.log('slideDown') //debug
    });
  });     

//end jq

});
