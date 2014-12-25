@init_timer = ->
  austDay = new Date()
  austDay = new Date(austDay.getFullYear()+1, 1 - 1, 26)
  $(".countdown").countdown
    until: austDay
    format: "dhms"
