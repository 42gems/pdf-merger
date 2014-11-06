$ ->
  $('input[type=file]').bootstrapFileInput()
  $("#add").click ->
    $(".table").append(JST['templates/_row'])

    $('.delete').click ->
      $(this).parent().closest('tr').remove()