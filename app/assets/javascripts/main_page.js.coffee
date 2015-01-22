$ ->
  init_carousel()
  init_timer()

  $(".js-scroll").click ->
    selected = $(this).attr("href")
    $.scrollTo selected, 750

    false

  hide_notify() if $('.notify:visible').length

  $('.notify').click ->
    $(this).hide()

    true

  $('.plus').click ->
    number = $('#order_quantity').val()
    number = parseInt(number) || 1
    number += 1
    $('#order_quantity').val(number)

    true

  $('.minus').click ->
    number = $('#order_quantity').val()
    number = parseInt(number) || 1
    if number <= 1
      number = 1
    else
      number -= 1
    $('#order_quantity').val(number)

    true

$(window).load ->
  init_map()
