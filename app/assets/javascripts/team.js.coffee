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
