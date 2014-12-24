$ ->

  $(".jcarousel").jcarousel wrap: 'circular'

  $(".jcarousel-control-prev").jcarouselControl target: "-=1"
  $(".jcarousel-control-next").jcarouselControl target: "+=1"

  austDay = new Date()
  austDay = new Date(austDay.getFullYear()+1, 1 - 1, 26)
  $(".countdown").countdown
    until: austDay
    format: "dhms"

  ymaps.ready ->
    $map = $('.map_wrapper .map')
    map = new ymaps.Map $map[0],
      center: [$map.attr('data-latitude'), $map.attr('data-longitude')]
      zoom: 15
      behaviors: ['drag', 'scrollZoom']
      controls: []
    ,
      maxZoom: 23
      minZoom: 11

    map.controls.add 'fullscreenControl',
      float: 'none'
      position:
        top: 10
        left: 10

    map.controls.add 'geolocationControl',
      float: 'none'
      position:
        top: 50
        left: 10

    map.controls.add 'zoomControl',
      float: 'none'
      position:
        top: 90
        left: 10

    map.geoObjects.add new ymaps.Placemark [56.4800670145844, 85.00952437484801]

  $(".js-scroll").click ->
    selected = $(this).attr("href")
    $.scrollTo selected, 750
    false

  $('.plus').click ->
    number = $('.number').text().trim()
    number = parseInt(number)
    number += 1
    $('.number').empty().text(number)

  $('.minus').click ->
    number = $('.number').text().trim()
    number = parseInt(number)
    number -= 1
    $('.number').empty().text(number)
