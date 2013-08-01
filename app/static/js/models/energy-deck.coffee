App.EnergyDeck = App.Deck.extend

  init: ->
    @cards = [
      App.JetFightersCard.create()
      App.ApartmentBuildingCard.create()
      App.EnergizeCard.create()
    ]
    @shuffle()
    @putOnDeck 3

  putOnDeck: (numCards) ->
    cards = @get('cards')
    for num in [0..(numCards - 1)]
      cards[num]?.set 'ondeck', true
    potentialLeft = cards.length - numCards < 0
    @set 'numNotOnDeck', if potentialLeft then 0 else potentialLeft

  remove: (card) ->
    @_super card
    @putOnDeck 1
