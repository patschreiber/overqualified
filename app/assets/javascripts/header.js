$(document).ready(function() {

  // Avoids global variables
  if ( Modernizr.rgba ) {
    $(function() {
      var previousScroll = 0;

      $(window).on('scroll', function() {
        var currentScroll = $(this).scrollTop();

        if (currentScroll > previousScroll) {
          alert('down');
        }
        else {
          alert('up');
        }
      });
    }());   // Run this anonymous function immediately
  }


});