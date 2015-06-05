//= require jquery
//= require js.cookie

$(document).ready( function(){
  $('.cookies-eu-ok').click(function(e){
    e.preventDefault();
    Cookies.set('cookie_eu_consented', 'true', { expires: 365, path: '/' });
    $('.cookies-eu').remove();
  });
});