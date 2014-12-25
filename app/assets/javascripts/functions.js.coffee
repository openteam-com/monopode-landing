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
