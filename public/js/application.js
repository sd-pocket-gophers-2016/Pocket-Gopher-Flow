$(document).ready(function() {

////////////////////////////////////////////////////////////////////////
////////////////////////////Add Comment/////////////////////////////////
////////////////////////////////////////////////////////////////////////

  $('#new_comment').hide();
    $('input[value="Add a Comment"]').on('click',(function(event){
      event.preventDefault();
      $('#new_comment').show();
      $(this).hide();
  }));

  $('.post-container').on('submit','#new_comment', function(e){
    e.preventDefault();
    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize()
    })
    .done(function(response){
      alert('florb');
    }).fail(function(){
      alert('fail');
    });
  });

////////////////////////////////////////////////////////////////////////
////////////////////////////Add Answer//////////////////////////////////
////////////////////////////////////////////////////////////////////////


  $('input[value="Add Answer"]').on("click", function(e){
    e.preventDefault();
    var answer = $("#answer").val();
    var url = $(this).closest('form').attr('action');
    var ajaxRequest = $.post(url, $(this).serialize());
    console.log(ajaxRequest);
  });

});
