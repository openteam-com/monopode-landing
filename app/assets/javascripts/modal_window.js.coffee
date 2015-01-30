@init_modal_window = ->
  $(".popup .close_window, .overlay").click ->
    $(".popup, .overlay").css "opacity", "0"
    $(".popup, .overlay").css "visibility", "hidden"
    return

  $('.popup').on 'ajax:success', ->
    $(".popup, .overlay").css "opacity", "0"
    $(".popup, .overlay").css "visibility", "hidden"
    show_notify('Звонок заказан. Скоро Вам перезвонят', 'success')
    hide_notify()
    return

  $("a.open_window").click (e) ->
    $(".popup, .overlay").css "opacity", "1"
    $(".popup, .overlay").css "visibility", "visible"
    e.preventDefault()
    return

  $('#phone_order_phone').inputmask 'mask',
    'mask': '+7-(999)-999-9999'

  return
