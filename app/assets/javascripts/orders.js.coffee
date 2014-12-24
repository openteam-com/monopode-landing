$ ->
  $(".js-send-form").click (e) ->
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

    error: ->
      alert 'Произошла ошибка' # TODO: поменять нотификацию ошибок
