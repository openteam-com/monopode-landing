->
  $('.notify').click ->
    $(this).hide()

    true

  hide_notify() if $('.notify:visible').length
