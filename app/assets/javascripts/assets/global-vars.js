var is_ipad     = navigator.userAgent.match(/iPad/i) !== null;
var is_phone    = navigator.userAgent.match(/iPhone/i) !== null;
var phones      = (/Android|webOS|iPhone|iPod|BlackBerry/i.test(navigator.userAgent));
var is_phones   = phones ? true : false;
var mobiles     = (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent));
var is_mobile   = mobiles ? true : false;
var body_height = $('body').height();
var html_height = $('html').height();
