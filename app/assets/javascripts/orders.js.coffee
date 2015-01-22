$ ->
  $('.new_order').on('ajax:success', (e, data, status, xhr) ->
    $('.right', '.order_form').hide()
    $('.order_form').append(xhr.responseText)
  )
