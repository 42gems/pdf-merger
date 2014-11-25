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


  $('#form').validate
    rules:
      "files[0]":
        required:true
      messages:
        "files[0]":"Field cannot be empty"
      "files[1]":
        required:true
      messages:
        "files[1]":"Field cannot be empty too "