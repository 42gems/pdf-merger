$ ->
  $('input[type=file]').bootstrapFileInput()
  $('.delete').hide()
  id_file = 1
  $("#add").click ->
    id_file++
    $(".table").append(JST['templates/_row'] counter: id_file)
    $("#form").validate()
    $("input[name=\"files["+id_file+"]\"]").rules "add",
    required: true

    $(':not(.file-input-wrapper) > input[type=file]').bootstrapFileInput();
    $('.delete').show()

    $('.delete').click ->
      $(this).parent().closest('tr').remove()
      $('.delete').hide() if $(".delete").length == 2

  $("#sortable").sortable
    handle:'.handle'

  $('#form').validate
    rules:
      "files[0]":
        required: true
      "files[1]":
        required: true