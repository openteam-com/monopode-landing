perform_ajax = (delivery) ->
  $.ajax
    type: 'post'
    url: "/update_button"
    data:
      id: $('.js-order-button').attr('id')
      quantity: parseInt($('.monopode_quantity').text())
      delivery: delivery

    success:(response) ->
      $('.bottom_wrapper').empty()
      $('.bottom_wrapper').append(response)

price_check = ->
  if ($('.radio_buttons:checked', '.order_delivery_method').val() == 'delivery' || $('.radio_buttons:checked', '.order_city').val() == 'other') && parseInt($('.monopode_quantity').text()) < 3
    perform_ajax(true)
  else
    perform_ajax(false)

$ ->
  $('.order_form').on 'click', '.plus', ->
    number = $('#order_quantity').val()
    number = parseInt(number) || 1
    $('.second_form_quantity, #order_quantity').val(number+1)
    $('.monopode_quantity').text(number+1)
    price_check() if $('.second_form_quantity').length

  $('.order_form').on 'click', '.minus', ->
    number = $('#order_quantity').val()
    number = parseInt(number) || 1
    if number <= 1
      number = 1
    else
      number -= 1
    $('.second_form_quantity, #order_quantity').val(number)
    $('.monopode_quantity').text(number)
    price_check() if $('.second_form_quantity').length

  $('#order_phone').inputmask 'mask',
    'mask': '+7-(999)-999-9999'

  $('.new_order').on('ajax:success', (e, data, status, xhr) ->
    $('.right', '.order_form').hide()
    $('.left', '.order_form').hide()
    $('.order_form').append(xhr.responseText)
    $('.order_form').css('background', '#f2f2f2') # ?
  )

  # if Tomsk was selected
  $('.order_form').on 'change', '.order_delivery_method .radio_buttons', ->
    $('.order_post_address', '.form_1').toggle()
    $('.helper_info', '.form_1').toggle()
    price_check()

  # if Other city was selected
  $('.order_form').on 'change', '.order_city .radio_buttons', ->
    $('.form_1').toggle()
    $('.form_2').toggle()
    $('.order_post_address', '.form_2').toggle() # toggle fake input for address
    price_check()

  $('.order_form').on 'click', '.js-order-button', ->
    if $('.radio_buttons:checked', '.order_city').val() == 'tomsk'
      if $('.radio_buttons:checked', '.order_delivery_method').val() == 'pickup'
        address = 'Самовывоз'
      else
        address = $('.order_post_address input', '.form_1').val()
    else
      address = $('.order_post_index input', '.form_2').val() + ', ' + $('.order_post_address textarea', '.form_2').val() + ', ' + $('.order_fio input', '.form_2').val()

    id = $('.js-order-button').attr('id')

    $.ajax
      type: 'post'
      url: "/orders/"+id
      data:
        _method: 'put'
        id: id
        address: address
        quantity: $('.number input').val()

      success: ->
        console.log 'success'
      error: ->
        console.log 'error'
