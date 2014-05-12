$(document).ready(function() {

  var jumboHeight = $('.jumbotron').outerHeight();
  
  function parallax(){
      var scrolled = $(window).scrollTop();
      $('.bg').css('height', (jumboHeight-scrolled) + 'px');
  }

  $(window).on('scroll', function(e){

    if( !Modernizr.touch ) {
      parallax();
    }
  });

});