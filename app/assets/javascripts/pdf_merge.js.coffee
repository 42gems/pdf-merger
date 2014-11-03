# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

->jQuery
$ ->
  clicked = 0
  $("#add").click ->
    $("#fields").append ("= file_field_tag 'files[]'")
    clicked++
