$ ->
  $('input[type=file]').bootstrapFileInput()
  $("#add").click ->
    $(".table").append(JST['templates/_row'])
    $(':not(.file-input-wrapper) > input[type=file]').bootstrapFileInput();

    $('.delete').click ->
      $(this).parent().closest('tr').remove()

  $("#sortable").sortable()