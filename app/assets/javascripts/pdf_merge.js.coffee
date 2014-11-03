# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('input[type=file]').bootstrapFileInput();
  $("#add").click ->
    $(".fields").append("<div class='form-group' id='fields'> <input id='files_' name='files[]' type='file'> </div>")
    $(':not(.file-input-wrapper) > input[type=file]').bootstrapFileInput();