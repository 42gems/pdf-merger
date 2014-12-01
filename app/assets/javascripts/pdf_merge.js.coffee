$ ->
  $('input[type=file]').bootstrapFileInput()
  $('.delete').hide()
  file_id = 1
  $("#add").click ->
    file_id++
    $(".table").append(JST['templates/_row'] counter: file_id)
    $("#form").validate()
    $("input[name=\"files["+file_id+"]\"]").rules "add",
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
    errorElement: "span"
    errorClass: "help-block"
    errorPlacement: (error, element) ->
      error.insertAfter element.parent()