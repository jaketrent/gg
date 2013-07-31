App.CardInDeckView = App.CardView.extend
  templateName: 'card-in-deck'

  click: (evt) ->
    $target = $(evt.target)

    if $target.hasClass 'player-cards-item-close-btn'
      @get('controller').send 'closeCard', @get 'content'
    else if $target.hasClass 'player-cards-item-buy-btn'
      @get('controller').send 'buyCard', @get 'content'
    else
      @get('controller').send 'expandCard', @get 'content'
