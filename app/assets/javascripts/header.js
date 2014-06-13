$(document).ready(function() {
  
  if( Modernizr.touch ) {
    $('#nav-menu-toggle').show();
    $('#nav-menu-toggle').click(mobileExpand);
  }
  else {
    $('nav').hover(expand);
  }
});

function expand() {
  $('body').toggleClass("nav-menu-open-body");
}

function mobileExpand() {
  $('nav').toggleClass("nav-menu-open-mobile");
  $('body').toggleClass("nav-menu-open-body-mobile");
}
