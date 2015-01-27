$ ->
  init_carousel()
  init_timer()
  #init_gallery()
  init_modal_window()

  $(".js-scroll").click ->
    selected = $(this).attr("href")
    $.scrollTo selected, 750

    false

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
