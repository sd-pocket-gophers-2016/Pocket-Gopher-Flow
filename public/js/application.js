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

    // var new_comment = $('#new_comm');

    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize()
    })

    .done(function(response){
      $('#all-post-comments').append("<div id='post-comment'>" + response.content + " </div>");
      $('#new_comment')[0].reset();
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

//   $('input[value="Add Answer"]').on("click", function(e){
//     e.preventDefault();
//     var answer = $("#answer").val();
//     var uri = $(this).closest('form').attr('action');
//     var ajaxRequest = $.post(url, $(this).serialize());
//     console.log(ajaxRequest);
//     $.ajax({
//       url: uri
//       type: "POST"
//       dataType: "json"
//     })
//     $("#bigcontainer").append("<h3>Testing</h3>")
});
