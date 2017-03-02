ready = ->
  $('.shareable_button').on 'click', ->
    input_box = $(this).parent('span').next('input')
    input_box.select();
    document.execCommand('copy')
$(document).on 'ready page:load', ready
