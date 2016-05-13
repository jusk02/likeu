

$(document).on('ready page:load', function(event) {
  
  $(".modal .faq").on("submit", function (e) {
    var form = $(this);
    faq(form, e);
  });

  $(".panel .faq").on("submit", function (e) {
    var form = $(this);
    faq(form, e);
  });


});
