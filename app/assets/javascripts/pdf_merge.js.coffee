#= require hamlcoffee
$ ->
  $('input[type=file]').bootstrapFileInput()
  $("#add").click ->
    $(".table").append(JST["_row"])

    $('.delete').click ->
      $(this).parent().closest('tr').remove()