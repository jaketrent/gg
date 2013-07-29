App.EnergyDeck = App.Deck.extend

  init: ->
    @cards = [
      App.JetFightersCard.create()
    ]
    @shuffle()
    @putOnDeck 3

  putOnDeck: (numCards) ->
    for num in [0..(numCards - 1)]
      @get('cards')[num]?.set 'ondeck', true

  remove: (card) ->
    @_super card
    @putOnDeck 1
