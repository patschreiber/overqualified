$(document).ready(function() {
  
  $('nav').hover(expand);
});

function expand() {
  $('body').toggleClass("nav-menu-open-body");
  $('.collapsed-nav-logo').toggleClass("collapsed-nav-logo-hover");
}