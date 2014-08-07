@admin = 
  initMenu: (controller) ->
    for elem in $('ul.sednav > li')
      if controller == $(elem).attr('data-controller')
        $(elem).addClass('active') 
        $(elem).css('background-color','#555555') 
        parentLi = $(elem).parents('li').eq(0)
        parentLi.addClass('active')

        $(elem).parent().eq(0).collapse('show')

    $('ul.sednav > li').click (e) -> 
      e.stopPropagation();        

$ ->
