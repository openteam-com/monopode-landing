$ ->

  $(".jcarousel").jcarousel wrap: 'circular'

  $(".jcarousel-control-prev").jcarouselControl target: "-=1"
  $(".jcarousel-control-next").jcarouselControl target: "+=1"

  austDay = new Date()
  austDay = new Date(austDay.getFullYear()+1, 1 - 1, 26)
  $(".countdown").countdown
    until: austDay
    format: "DHMS"

  ymaps.ready ->
    $map = $('.map_wrapper .map')
    map = new ymaps.Map $map[0],
      center: [$map.attr('data-latitude'), $map.attr('data-longitude')]
      zoom: 12
      behaviors: ['drag', 'scrollZoom']
      controls: []
    ,
      maxZoom: 23
      minZoom: 11

  $(".menu li a").click ->
    selected = $(this).attr("href")
    $.scrollTo selected, 750
    false
