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

    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize()
    })

    .done(function(response){
      $('#all-post-comments div').remove();
      $.each(response, function(i, comment) {
        $('#all-post-comments').append("<div id ='post-comment'>" + comment.content + "</div>");
      });

      $('#new_comment')[0].reset();

    });

  });

////////////////////////////////////////////////////////////////////////
////////////////////////////Add Answer//////////////////////////////////
////////////////////////////////////////////////////////////////////////


  $('.answer-container').on('submit', 'form', function(e){
    e.preventDefault();
    alert('hello');

    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize()
    })
      .done(function(response){
        $('#answers div').remove();
        $.each(response, function(i, answer) {
        $('#answers').append("<div id ='post-answer'>" + answer.content + "</div>")
        });
      });
    });
  });
 

