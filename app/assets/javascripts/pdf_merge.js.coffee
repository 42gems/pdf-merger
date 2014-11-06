$ ->
  $('input[type=file]').bootstrapFileInput()
  $("#add").click ->
    $(".table").append(JST['templates/_row'])

    $('.btn.btn-primary.btn-danger.fa.fa-trash-o.fa-lg').click ->
      $(this).parent().closest('tr').remove()
