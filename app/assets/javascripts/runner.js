$(document).ready(function() {
  $("#new_idea").submit(createIdea);
  deleteIdea();
});

function createIdea(event) {
  event.preventDefault();

  postIdea();
}

function ideaData() {
  return {
    idea: {
      title: $("#idea_title").val(),
      body: $("#idea_body").val()
    }
  };
}

function postIdea(){
  $.post("/ideas", ideaData(), function(data) {
    $(".ideas").prepend(data);
    $("#new_idea").trigger('reset');
  });
}

function deleteIdea(){
  $(".row").delegate("#delete", 'click', function() {
    var $idea = $(this).closest(".idea");

    $.ajax({
      type: 'DELETE',
      url: '/ideas/' + $idea.data('id'),
      success: function () {
        $idea.remove()
      }
    });
  });
}
