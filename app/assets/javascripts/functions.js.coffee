@hide_notify = ->
  setTimeout (->
    $('.notify').fadeOut('slow')
  ), 2000

@show_notify = (text, type) ->
  $('.notify_text').text(text)
  if type == 'success'
    $('.notify').css('background-color', '#136a23').show()
  else if type == 'error' || type == 'warning'
    $('.notify').css('background-color', '#ef4c43').show()

@is_email = (email) ->
  regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/

  regex.test email

@toggleForm = () ->
  $('.left', '.order_form').fadeToggle()
  $('.right', '.order_form').fadeToggle()

  $('.new_left', '.order_form').fadeToggle()
  $('.new_right', '.order_form').fadeToggle()

  $('.order_form').css('background', '#f2f2f2')

  $('.js-order-button').fadeToggle()
  $('.js-order-button').css('display', 'block')
