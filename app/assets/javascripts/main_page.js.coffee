$ ->

  $(".jcarousel").jcarousel wrap: 'circular'

  $(".jcarousel-control-prev").jcarouselControl target: "-=1"
  $(".jcarousel-control-next").jcarouselControl target: "+=1"

  austDay = new Date()
  austDay = new Date(austDay.getFullYear()+1, 1 - 1, 26)
  $(".countdown").countdown
    until: austDay
    format: "DHMS"

  $(".menu li a").click ->
    selected = $(this).attr("href")
    $.scrollTo selected, 750
    false
