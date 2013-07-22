App.EnergyDeck = App.Deck.extend

  init: ->
    @cards = [
      App.JetFightersCard.create()
    ]
    @shuffle()