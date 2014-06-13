$(document).ready(function() {
  $('nav').hoverIntent({
    over: expand,
    out: expand,
    interval: 50
  });
});

function expand() {
  $('.nav-menu').toggleClass("nav-menu-open");
  $('body').toggleClass("nav-menu-open-body");
}

//    $('.nav-menu').toggleClass("nav-menu-open");
   // $('body').toggleClass("nav-menu-open-body");