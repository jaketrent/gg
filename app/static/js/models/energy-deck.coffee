App.EnergyDeck = App.Deck.extend

  init: ->
    @cards = [
      App.JetFightersCard.create()
      App.ApartmentBuildingCard.create()
      App.EnergizeCard.create()
      App.NuclearPowerPlantCard.create()
    ]
    @numNotOnDeck = @cards.length
    @shuffle()
    @putOnDeck 3

  putOnDeck: (numCards) ->
    cards = @get('cards')
    for num in [0..(numCards - 1)]
      cards[num]?.set 'isOnDeck', true
    potentialLeft = cards.length - numCards
    @set 'numNotOnDeck', if potentialLeft < 0 then 0 else potentialLeft

  remove: (card) ->
    @_super card
    @putOnDeck 1
