$ ->
  init_carousel()
  init_timer()
  #init_gallery()
  init_modal_window()

  $(".js-scroll").click ->
    selected = $(this).attr("href")
    $.scrollTo selected, 750

    false

$(window).load ->
  init_map()
