$(document).ready(function() {
  
  $('nav').hover(expand);

  $('.navbar-toggle').on('click', function() {
    $('#mobile-navbar-menu').stop().slideToggle();
  });
});

function expand() {
  $('body').toggleClass("nav-menu-collapsed");
  $('.collapsed-side-nav').toggleClass("collapsed-side-nav-hover");
}