$('#btn-delete').click(function () {
  let id = $(this).attr('data-id');
  $.ajax({
    method: 'DELETE',
    dataType: 'json',
    url: '/supervisor/users/' + id,
    data: {
      id: id,
    }, success: function (data) {
      $('#user_id' + id).remove();
      $('#myModal').modal('hide');
      $('#showmsg').append('<div class="alert alert-'
        + data.cls + '">'+data.msg+'</div>');
    }
  });
});

function load_modal(id) {
  $('#btn-delete').attr('data-id', id)
}
