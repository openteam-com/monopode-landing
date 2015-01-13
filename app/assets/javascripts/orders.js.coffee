$ ->
  $(".js-send-form").click (e) ->
    return false if $('.js-send-form').hasClass('disabled')
    perform_ajax() if is_email($('#email').val())
    e.preventDefault()

  $('body').on 'click', '.js-order-button', ->
    return false if $('.js-order-button').hasClass('disabled')
    id = $('.js-order-button').attr('id')
    address = $('#address').val()
    $.ajax
      type: 'post'
      url: "/orders/"+id
      data: {
        _method: 'put'
        id: id
        address: address
      }

    $('.js-order-button').attr('disabled', true)
    $('.js-order-button').addClass('disabled')

  $('.js-open-form').click (e) ->
    return false if $('.js-open-form').hasClass('disabled')

    if is_email($('#email').val())
      toggleForm()
    else
      show_notify('Неверно заполнено поле e-mail', 'warning')
      hide_notify()

    e.preventDefault()

  #$('.js-return-old-form').click (e) ->
    #toggleForm()
    #e.preventDefault()

  $('.js-select-city').change ->
      $('.annotation').toggle()

perform_ajax = ->
  $.ajax
    type: 'post'
    url: '/orders'
    data: {
      first_name: $("#first_name").val(),
      last_name: $("#last_name").val(),
      email: $("#email").val(),
      quantity: $(".number").text().trim(),
    }
    success: (response) ->
      $('.js-send-form').prop('disabled', true)
      $('.js-send-form').addClass('disabled')
      $('.order_form').append(response)

    error: ->
      show_notify('Произошла ошибка. Возможно, заполнены не все поля', 'error')
      hide_notify()
