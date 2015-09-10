//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .

$(document).ready(function() {
  var displayPoints = function () {
    $('.map-marker-1').delay(1000).fadeIn(2000).delay(5000).fadeOut(1000);
    $('.map-marker-2').delay(3000).fadeIn(2000).delay(5000).fadeOut(1000);
    $('.map-marker-3').delay(5000).fadeIn(2000).delay(5000).fadeOut(1000);
    $('.map-marker-4').delay(7000).fadeIn(2000).delay(5000).fadeOut(1000);
    $('.map-marker-5').delay(9000).fadeIn(2000).delay(5000).fadeOut(1000);
    $('.map-marker-6').delay(11000).fadeIn(2000).delay(5000).fadeOut(1000);
  }
  $(".hand").delay(5000).animate({ "left": "+=50px" }, "slow" );
  $(".rotate").Morphext({
    animation: "fadeInDown",
    speed: 5000
  });
  displayPoints();
  setInterval(displayPoints, 7000);
});


