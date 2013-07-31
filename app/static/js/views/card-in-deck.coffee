App.CardInDeckView = Ember.View.extend
  templateName: 'card-in-deck'

  click: (evt) ->
    $target = $(evt.target)

    if $target.hasClass 'player-cards-item-close-btn'
      @get('controller').send 'closeCard', @get 'content'
    else if $target.hasClass 'player-cards-item-buy-btn'
      @get('controller').send 'buyCard', @get 'content'
#    else if $target.hasClass 'player-cards-item-use-btn'
#      @get('controller').send 'useCard', @get 'content'
    else
      @get('controller').send 'expandCard', @get 'content'
