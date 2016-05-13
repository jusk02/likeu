function login(form, e) {
  e.preventDefault();

  $.ajax({
    url: '/messages/new',
    dataType: 'json',
    data: form.serialize(),
    method: 'POST',
    success: function (data) {
      $('#myModal').modal('hide');
      location.href = '/';
    },
    error: function (data){
      form.find(".errors").html(data.responseJSON.error).show();
    }
  });
}

$(document).on('ready page:load', function(event) {
  
  $(".modal .new_message").on("submit", function (e) {
    var form = $(this);
    login(form, e);
  });

  $(".panel .new_message").on("submit", function (e) {
    var form = $(this);
    login(form, e);
  });


});