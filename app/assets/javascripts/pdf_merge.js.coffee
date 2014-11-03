# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
   $("#add").click ->
    $(".fields").append("<div class='form-group' id='fields'> <input id='files_' name='files[]' type='file'> </div>")

