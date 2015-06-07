//= require js.cookie

jQuery(document).ready(function() {
  jQuery('.eu-cookies-ok').click(function(e) {
    e.preventDefault();
    process_consent();
  });

  if (jQuery('.eu-cookies[data-use-scroll="true"]').length) {
    jQuery(window).one('scroll', function(e) {
      // manual scroll
      if (e.originalEvent) {
        process_consent();
      }
    });
  }
});

function process_consent() {
  Cookies.set('eu_cookies_consent', 'true', { expires: 365, path: '/' });

  var element = jQuery('.eu-cookies');
  element.fadeOut(300, function() {
    element.remove();
  });
}
