ready = ->
  $('.shareable_button').on 'click', ->
    input_box = $(this).parent('span').next('input')
    input_box.select();
    document.execCommand('copy', false, input_box.val())
$(document).on 'ready page:load', ready
