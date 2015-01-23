$ ->
  $('.new_order').on('ajax:success', (e, data, status, xhr) ->
    $('.right', '.order_form').hide()
    $('.order_form').append(xhr.responseText)
    $('.order_form').css('background', '#f2f2f2') # ?
  )

  # if Tomsk was selected
  $('.radio_buttons', '.order_delivery_method').change ->
    $('.order_post_address', '.form_1').toggle() # toggle fake input for address

  # if Other city was selected
  $('.radio_buttons', '.order_city').change ->
    $('.form_1').toggle()
    $('.form_2').toggle()
    $('.order_post_address', '.form_2').toggle() # toggle fake input for address

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
      data: {
        _method: 'put'
        id: id
        address: address
      }

      success: ->
        console.log 'success'
      error: ->
        console.log 'error'
