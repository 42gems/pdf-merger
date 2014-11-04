# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('input[type=file]').bootstrapFileInput();
  $("#add").click ->
    $(".table").append((JST["row.jst.hamlc"])).bootstrapFileInput();

    $('.delete').click ->
      $(this).parent().closest('tr').remove()
    $

