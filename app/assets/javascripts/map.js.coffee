@init_map = ->
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
    zgPlacemark = new ymaps.Placemark([56.4800670145844, 85.00952437484801],
      balloonContentHeader: "Алтайская 161 б стр. 2"
      balloonContentBody:"<img width='230' height='200' src='http://storage.znaigorod.ru/files/259024/230-200/map_picture.jpg' />"

      hintContent: "Алтайская 161 б стр. 2"
    )

    map.geoObjects.add zgPlacemark
    zgPlacemark.balloon.open()
