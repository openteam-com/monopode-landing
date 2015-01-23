@init_timer = ->
  finalDay = new Date()
  now = new Date()
  finalDay = new Date(finalDay.getFullYear(), 1 - 1, 31)
  date_difference = finalDay/1000 - now.getTime()/1000

  clock = $(".countdown").FlipClock(date_difference, {
    clockFace: 'DailyCounter'
    countdown: true
    language: 'russian'
  })
