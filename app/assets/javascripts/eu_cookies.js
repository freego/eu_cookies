//= require js.cookie

$(document).ready( function(){
  $('.eu-cookies-ok').click(function(e){
    e.preventDefault();
    Cookies.set('eu_cookies_consent', 'true', { expires: 365, path: '/' });
    $('.eu-cookies').remove();
  });
});
