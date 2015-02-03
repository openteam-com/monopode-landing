@init_timer = ->
  finalDay = new Date()
  now = new Date()
  day = $('.ribbon').attr('data-day')
  month = $('.ribbon').attr('data-month')
  finalDay = new Date(finalDay.getFullYear(), month - 1, day)
  console.log finalDay
  date_difference = finalDay/1000 - now.getTime()/1000

  clock = $(".countdown").FlipClock(date_difference, {
    clockFace: 'DailyCounter'
    countdown: true
    language: 'russian'
  })
