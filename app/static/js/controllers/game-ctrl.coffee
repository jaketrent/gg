App.GameController = Ember.ObjectController.extend

  toggleDieHold: (die) ->
    die.toggleHold()

  rollDice: ->
    @set('model.dice', die.roll() for die in @get('model.dice'))
    @incrementProperty 'model.rollNum'

  addPlayer: ->
    @get('model.config').addPlayer()

  startTurns: ->
    @get('model').startTurns()

  nextPhase: ->
    @get('model').nextPhase()

  # TODO: would make more sense if game ctrl had child player-scoped ctrls
  actionBy: (key, player) ->
    player.act key, @get 'model'

  expandCard: (card) ->
    console.log 'expand card'
    card.expand()

  closeCard: (card) ->
    console.log 'close card'
    card.close()

  buyCard: (card) ->
    console.log 'buy card'
    @get('model.currentPlayer').buyCard @get('model.deck'), card

  useCard: (card, player) ->
    player.useCard card, @get('model')
