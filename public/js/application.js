$(document).ready(function() {
  $('#new_comment').hide();
    $('input[value="Add a Comment"]').on('click',(function(event){
      event.preventDefault();
      $('#new_comment').show();
      $(this).hide();
  }));

//
});
