App.Deck = App.Model.extend

  init: ->
    @cards = []

  shuffle: ->
    @set 'cards', _.shuffle @get 'cards'

  remove: (card) ->
    @set 'cards', _.without @get('cards'), card

  add: (card) ->
    @cards.addObject card