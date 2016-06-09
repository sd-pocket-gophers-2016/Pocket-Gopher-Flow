$(document).ready(function() {
////////////////////////////////////////////////////////////////////////
////////////////////////////Add Comment/////////////////////////////////
////////////////////////////////////////////////////////////////////////
  $('#new_comment').hide();

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

  // $("#bigcontainer").on("submit", function(e){
  //   e.preventDefault();
  //   var that = $('#new-comment')
  //   console.log(that)
  //   var buttonType = $('input').attr("value")
  //   if(buttonType == "Add Answer"){
  //     console.log("found button")
  //   }
  //   else{
  //   }
  // });

  $('input[value="Add Answer"]').on("click", function(e){
    e.preventDefault();
    // var answer = $("#answer").val();
    // var uri = $(this).closest('form').attr('action');
    // var ajaxRequest = $.post(url, $(this).serialize());
    // console.log(ajaxRequest);
    // $.ajax({
      url: uri
      type: "POST"
      dataType: "json"
    })
    $("#bigcontainer").append("<h3>Testing</h3>")
});
