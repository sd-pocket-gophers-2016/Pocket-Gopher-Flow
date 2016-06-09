$(document).ready(function() {


////////////////////
  $('#new_comment').hide();

  $('form').on('click', 'input', (function(event){

    event.preventDefault();
    console.log(event);

  }));


  //   $('input[value="Add a Comment"]').on('click',(function(event){
  //     event.preventDefault();
  //     $('#new_comment').show();
  //     $(this).hide();
  // }));

  // $('input[value="Add Answer"]').on("click", function(e){
  //   e.preventDefault();
  //   var answer = $("#answer").val();
  //   var url = $(this).closest('form').attr('action');
  //   var ajaxRequest = $.post(url, $(this).serialize());
  //   console.log(ajaxRequest);
  // });
///////////////////////////
});
