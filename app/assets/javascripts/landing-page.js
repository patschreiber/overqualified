$(document).ready(function() {

  var jumboHeight = $('.jumbotron').outerHeight();
  console.log(jumboHeight);
  
  function parallax(){
      var scrolled = $(window).scrollTop();
      $('.bg').css('top', -(scrolled * 0.2) + 'px');
  }

  $(window).on('scroll', function(e){

    if( !Modernizr.touch ) {
      parallax();
    }
  });

});