# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('input[type=file]').bootstrapFileInput();
  $("#add").click ->
    $(".table").append("<tr><td><a class='file-input-wrapper btn btn-default '> <span>Browse</span><input id='files_' name='files[]' type='file'>
                        </a> </td><td><button class='btn btn-primary delete' type='button'>Delete</button></td></tr>")
    $(':not(.file-input-wrapper) > input[type=file]').bootstrapFileInput();

    $('.delete').click ->
      $(this).parent().closest('tr').remove()
    $