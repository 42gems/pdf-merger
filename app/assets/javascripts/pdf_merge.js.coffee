$ ->
  $('input[type=file]').bootstrapFileInput();
  $("#add").click ->
    $(".table").append(JST["_row.jst.hamlc"]);

    $('.delete').click ->
      $(this).parent().closest('tr').remove()
    $

