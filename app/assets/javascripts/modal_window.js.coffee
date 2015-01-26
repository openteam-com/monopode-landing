@init_modal_window = ->
  $(".popup .close_window, .overlay, .close_button").click ->
    $(".popup, .overlay").css "opacity", "0"
    $(".popup, .overlay").css "visibility", "hidden"
    return

  $("a.open_window").click (e) ->
    $(".popup, .overlay").css "opacity", "1"
    $(".popup, .overlay").css "visibility", "visible"
    e.preventDefault()
    return

  $('#phone_order_phone').inputmask 'mask',
    'mask': '+7-(999)-999-9999'

  return
