
// Scroll Function
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});


// Header-16 fades

$(window).scroll(function() {
  $("#center-main").css({
    'opacity' : 1-(($(this).scrollTop())/300)
  });
});
$(window).scroll(function() {
  $("#header-main").css({
    'opacity' : 1-(($(this).scrollTop())/500)
  });
});

// Nav-bar fades

$(document).ready(function() {
  $(window).scroll(function(){
    if(document.body.scrollTop > 400)
      $('#logotop').fadeIn( "slow", function() { });
      else
        $('#logotop').fadeOut( "slow", function() { });
      });

      $('a#srolltotop').click(function(){
        $('html, body').animate({scrollTop:0}, 100);
        return false;
      });
    });

$(document).ready(function() {
  $(window).scroll(function(){
    if(document.body.scrollTop > 400)
      $('#navbkg').fadeIn( "slow", function() { });
      else
        $('#navbkg').fadeOut( "slow", function() { });
      });

      $('a#srolltotop').click(function(){
        $('html, body').animate({scrollTop:0}, 100);
        return false;
      });
    });
