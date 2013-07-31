App.CardForPlayerView = App.CardView.extend
  templateName: 'card-for-player'

  click: (evt) ->
    $target = $(evt.target)

    if $target.hasClass 'player-cards-item-close-btn'
      @get('controller').send 'closeCard', @get 'content'
    else if $target.hasClass 'player-cards-item-use-btn'
      @get('controller').send 'useCard', @get('content'), @get('player')
    else
      @get('controller').send 'expandCard', @get 'content'
