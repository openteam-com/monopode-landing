$ ->
  #$('.new_order').on('ajax:beforeSend', (e, data, status, xhr) ->
    #quantity: $(".number").text().trim()
  #)
  # Отправка первой формы
  #$(".js-send-form").click (e) ->
    #return false if $('.js-send-form').hasClass('disabled')
    #perform_ajax() if is_email($('#email').val())
    #e.preventDefault()

  ## Отправка второй формы TODO: нужны изменения
  #$('body').on 'click', '.js-order-button', ->
    #return false if $('.js-order-button').hasClass('disabled')
    #id = $('.js-order-button').attr('id')
    #address = $('#address').val()
    #city = $('.js-select-city').val()
    #full_address = city + ", " + address
    #$.ajax
      #type: 'post'
      #url: "/orders/"+id
      #data: {
        #_method: 'put'
        #id: id
        #address: full_address
      #}

    #$('.js-order-button').attr('disabled', true)
    #$('.js-order-button').addClass('disabled')

  ## Показ второй формы
  #$('.js-open-form').click (e) ->
    #return false if $('.js-open-form').hasClass('disabled')

    #if is_email($('#email').val())
      #toggleForm()
    #else
      #show_notify('Неверно заполнено поле e-mail', 'warning')
      #hide_notify()

    #e.preventDefault() # ;/

  ## Выбор города TODO: переделать
  #$('.js-select-city').change ->
      #$('.annotation').toggle()

## функция отправки ajax
#perform_ajax = ->
  #$.ajax
    #type: 'post'
    #url: '/orders'
    #data: {
      #first_name: $("#first_name").val(),
      #phone: $("#phone").val(),
      #email: $("#email").val(),
      #quantity: $(".number").text().trim(),
    #}
    #success: (response) ->
      #$('.js-send-form').prop('disabled', true)
      #$('.js-send-form').addClass('disabled')
      #$('.order_form').append(response)

    #error: ->
      #show_notify('Произошла ошибка. Возможно, заполнены не все поля', 'error')
      #hide_notify()
