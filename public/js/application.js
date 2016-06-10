// var post_comments = @post.comments

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
      $.each(response, function(i, comment) {
        $('#all-post-comments').append("<div id ='post-comment'>" + comment.content + "</div>");
      });
      // $('#all-post-comments').append("<div id='post-comment'>" + response.content + " </div>");
      $('#new_comment')[0].reset();
    });

  });

////////////////////////////////////////////////////////////////////////
////////////////////////////Add Answer//////////////////////////////////
////////////////////////////////////////////////////////////////////////


  $('.answer-container').on("click", '#new_answer', function(e){
    e.preventDefault();
    var answer = $("#answer").val();
    console.log(answer);

    var template = "<div class='answer-container'><div id='answers'>" +
    "<div id='user_answer'>" + answer + "</div>" +
    "<div id='all-answer-comments'></div><div id='answer-comment-button'></div></div>"

    // var uri = $(this).closest('form').attr('action');
    // var ajaxRequest = $.post(url, $(this).serialize());
    // console.log(ajaxRequest);
    // var that = $(this);
    // alert("aergerlkg");
    // console.log("akejghekth");
    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize()
    })
    .done(function(response){
      $('#answers').prepend(template)})
    .fail(function(){
      alert("failed");
    })
    });
  });
  //  $("#bigcontainer").append("<h3>Testing</h3>")
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

