$(document).ready(function() {


//
  $('input[value="Add Answer"]').on("click", function(e){
    e.preventDefault();
    var answer = $("#answer").val();
    var url = $(this).closest('form').attr('action');
    var ajaxRequest = $.post(url, $(this).serialize());
    console.log(ajaxRequest);
  });
});
