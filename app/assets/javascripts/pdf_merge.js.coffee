$ ->
  $('input[type=file]').bootstrapFileInput()
  $('.delete').hide()
  x = 1
  $("#add").click ->
    x++
    $(".table").append(JST['templates/_row'] counter: x)
    $("#form").validate()
    $("input[name=\"files["+x+"]\"]").rules "add",
    required: true

    $(':not(.file-input-wrapper) > input[type=file]').bootstrapFileInput();
    $('.delete').show()

    $('.delete').click ->
      $(this).parent().closest('tr').remove()
      $('.delete').hide() if $(".delete").length == 2

  $("#sortable").sortable
    handle: '.handle'

  $('#form').validate
    rules:
      "files[0]":
        required:true
      "files[1]":
        required:true