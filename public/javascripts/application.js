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

  $('#disqus_thread').disqus({
    domain: "thedevstation",
    title: document.title,
    message: $('meta[name=description]').attr('content'),
    developer: window.location.hostname == "localhost" ? 1 : 0
  });

//end jq

});
