$ ->
  init_carousel()
  init_map()
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
    number = $('.number').text().trim()
    number = parseInt(number)
    number += 1
    $('.number').empty().text(number)

    true

  $('.minus').click ->
    number = $('.number').text().trim()
    number = parseInt(number)
    if number <= 1
      number = 1
    else
      number -= 1
    $('.number').empty().text(number)

    true
