$ ->
  $(".js-send-form").click (e) ->
    return false if $('.js-send-form').hasClass('disabled')
    perform_ajax()
    e.preventDefault()

perform_ajax = ->
  $.ajax
    type: 'post'
    url: '/orders'
    data: {
      first_name: $("#first_name").val(),
      last_name: $("#last_name").val(),
      email: $("#email").val(),
      quantity: $(".number").text().trim(),
      address: $("#address").val()
    }
    success: ->
      $('.js-send-form').prop('disabled', true)
      $('.js-send-form').addClass('disabled')

      show_notify('Ваша покупка успешно оформлена!', 'success')
      hide_notify()

    error: ->
      show_notify('Произошла ошибка. Возможно, заполнены не все поля', 'error')
      hide_notify()
