$ ->
  $('.roster-td').hover ->
      playerId = $(this).attr("data-id")
      $('#' + playerId).modal({
        show: true,
        backdrop:false
        })
      return
    ,-> 
      playerId = $(this).attr("data-id")
      $('#' + playerId).modal('hide')
      return
  $('#calendar').fullCalendar(
      events: '/games.json'
      dayClick: () -> 
        alert('a day has been clicked!')
    )
