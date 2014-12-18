$ ->

  $(".jcarousel").jcarousel ->
    wrap: 'circular'
    return

  $(".jcarousel-control-prev").jcarouselControl target: "-=1"
  $(".jcarousel-control-next").jcarouselControl target: "+=1"
