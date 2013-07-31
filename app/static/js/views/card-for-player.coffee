App.CardForPlayerView = Ember.View.extend
  templateName: 'card-for-player'

  click: (evt) ->
    console.log 'clicking card for player'
    $target = $(evt.target)
    player = @get 'player'
    console.log "player"
    console.log player

    if $target.hasClass 'player-cards-item-close-btn'
      @get('controller').send 'closeCard', @get 'content'
    else if $target.hasClass 'player-cards-item-use-btn'
      @get('controller').send 'useCard', @get('content'), @get('player')
    else
      @get('controller').send 'expandCard', @get 'content'
