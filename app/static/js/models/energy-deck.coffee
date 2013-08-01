App.EnergyDeck = App.Deck.extend

  init: ->
    @cards = [
      App.JetFightersCard.create()
      App.ApartmentBuildingCard.create()
      App.EnergizeCard.create()
      App.NuclearPowerPlantCard.create()
      App.VastStormCard.create()
      App.CornerStoreCard.create()
      App.EvacuationOrdersCard.create()
      App.SkyscraperCard.create()
    ]
    @numNotOnDeck = @cards.length
    @shuffle()
    @putOnDeck 3

  putOnDeck: (totalCardsOnDeck) ->
    cards = @get('cards')
    for num in [0..(totalCardsOnDeck - 1)]
      cards[num]?.set 'isOnDeck', true
    potentialLeft = cards.length - totalCardsOnDeck
    @set 'numNotOnDeck', if potentialLeft < 0 then 0 else potentialLeft

  remove: (card) ->
    @_super card
    @putOnDeck 3
