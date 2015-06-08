# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  heights = $('.well-dynamic').map(->
    $(this).height()
  ).get()
  maxHeight = Math.max.apply(null, heights)
  $('.well-dynamic').height maxHeight
  return