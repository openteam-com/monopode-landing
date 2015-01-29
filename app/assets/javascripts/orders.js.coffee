perform_ajax = ->
  $.ajax
    type: 'post'
    url: "/update_button"
    data:
      id: $('.js-order-button').attr('id')
      summ: parseInt($('.sum').text())

    success:(response) ->
      $('.js-order-button').remove()
      $('.update_button').append(response)

$ ->
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

    if $('.radio_buttons:checked', '.order_delivery_method').val() == 'delivery' && parseInt($('.monopode_quantity').text()) < 3
      sum = parseInt($('.sum').text())
      $('.sum').text(sum + 150)
      $('.details').append('<span class="appended"> + 150 рублей (доставка)</span>')
      perform_ajax()

    if $('.radio_buttons:checked', '.order_delivery_method').val() == 'pickup' && parseInt($('.monopode_quantity').text()) < 3
      sum = parseInt($('.sum').text())
      $('.sum').text(sum - 150)
      $('.appended').remove()
      perform_ajax()


  # if Other city was selected
  $('.order_form').on 'change', '.order_city .radio_buttons', ->
    $('.form_1').toggle()
    $('.form_2').toggle()
    $('.order_post_address', '.form_2').toggle() # toggle fake input for address

    if $('.radio_buttons:checked', '.order_city').val() == 'other' && parseInt($('.monopode_quantity').text()) < 3 && !$('.appended').length
      sum = parseInt($('.sum').text())
      $('.sum').text(sum + 150)
      $('.details').append('<span class="appended"> + 150 рублей (доставка)</span>')
      perform_ajax()

    if $('.radio_buttons:checked', '.order_city').val() == 'tomsk' && parseInt($('.monopode_quantity').text()) < 3 && $('.radio_buttons:checked', '.order_delivery_method').val() == 'pickup'
      sum = parseInt($('.sum').text())
      $('.sum').text(sum - 150)
      $('.appended').remove()
      perform_ajax()

  $('.order_form').on 'click', '.js-order-button', ->
    if $('.radio_buttons:checked', '.order_city').val() == 'tomsk'
      if $('.radio_buttons:checked', '.order_delivery_method').val() == 'pickup'
        address = 'Самовывоз'
      else
        address = $('.order_post_address input', '.form_1').val()
    else
      address = $('.order_post_index input', '.form_2').val() + ', ' + $('.order_post_address input', '.form_2').val() + ', ' + $('.order_fio input', '.form_2').val()

    id = $('.js-order-button').attr('id')

    $.ajax
      type: 'post'
      url: "/orders/"+id
      data:
        _method: 'put'
        id: id
        address: address

      success: ->
        console.log 'success'
      error: ->
        console.log 'error'
