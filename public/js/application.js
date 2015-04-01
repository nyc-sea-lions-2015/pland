Date.prototype.toDateInputValue = (function() {
  var local = new Date();
  return local.toJSON().slice(0,10);
});

$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $('#dob').val(new Date().toDateInputValue());

  // hide the div if the server says yes it got deleted!!!!! MUAHAHAHAHAHA!!!!!
  $('#update_me_sil_vous_plait').on('click', function(event) {
    event.preventDefault();
    var id = $(event.target).attr('id');
    $.ajax({
      type: 'delete',
      url: '/events/' + id,
    }).done(function(response) {
      if(response == 1){
        $('.div'+eval(id)).toggle(false);
      }
    });
  });

  $('#linky_linky').on('click', function(event) {
    event.preventDefault();
    var href = $(event.target).attr('href');
    $.ajax({
      type: 'get',
      url: href + '/',
    }).done(function(response) {
      $('#show_form_here_sil_vous_plait form').replaceWith(response);
    });
  });
});

