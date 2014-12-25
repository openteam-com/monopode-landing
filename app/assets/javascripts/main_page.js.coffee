$ ->
  init_carousel()
  init_map()
  init_timer()

  $(".js-scroll").click ->
    selected = $(this).attr("href")
    $.scrollTo selected, 750
    false

  $('.notify').click ->
    $(this).hide()

  $('.plus').click ->
    number = $('.number').text().trim()
    number = parseInt(number)
    number += 1
    $('.number').empty().text(number)

  $('.minus').click ->
    number = $('.number').text().trim()
    number = parseInt(number)
    number -= 1
    $('.number').empty().text(number)

  $('.js-open-form').click (e) ->
    if is_email($('#email').val())
      toggleForm()
    else
      show_notify('Неверно заполнено поле e-mail', 'warning')
      hide_notify()

    e.preventDefault()

  $('.js-return-old-form').click (e) ->
    toggleForm()
    e.preventDefault()

  $('.js-select-city').change ->
      $('.annotation').toggle()

toggleForm = () ->
  $('.left', '.order_form').fadeToggle()
  $('.right', '.order_form').fadeToggle()

  $('.new_left', '.order_form').fadeToggle()
  $('.new_right', '.order_form').fadeToggle()

  $('.order_form').css('background', '#f2f2f2')

  $('.js-order-button').fadeToggle()
  $('.js-order-button').css('display', 'block')
