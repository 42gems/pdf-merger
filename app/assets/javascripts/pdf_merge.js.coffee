$ ->
  $('input[type=file]').bootstrapFileInput()
  $('.delete').hide()
  $("#add").click ->
    $(".table").append(JST['templates/_row'])
    $(':not(.file-input-wrapper) > input[type=file]').bootstrapFileInput();
    $('.delete').show()

    $('.delete').click ->
      $(this).parent().closest('tr').remove()
      $('.delete').hide() if $(".delete").length == 2

  $("#sortable").sortable
    handle: '.handle'