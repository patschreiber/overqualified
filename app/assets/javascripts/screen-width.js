/* =======================
    This file is used to execute javascript on different screen sizes.
    
========================== */ 

$(document).ready(function() {

  if ($(this).width() < 768) {
    $('.navbar-toggle').show();
  }
  else {
    $('.navbar-toggle')
  }


  $(window).on('resize', function() {

    if ($(this).width() < 768) {
      if ($('.navbar-toggle').is(':hidden')) {
        $('.navbar-toggle').fadeIn();
      }
    }
    else {
      if ($('.navbar-toggle').is(':visible')) {
        $('.navbar-toggle').fadeOut();
      }
    }

  });
});