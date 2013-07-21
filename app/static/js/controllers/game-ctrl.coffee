App.GameController = Ember.ObjectController.extend

  toggleDieHold: (die) ->
    die.toggleHold()

  rollDice: ->
    @set('model.dice', die.roll() for die in @get('model.dice'))
    @incrementProperty 'model.rollNum'

  startTurns: ->
    @get('model').startTurns()

  nextPhase: ->
    @get('model').nextPhase()

  # TODO: would make more sense if game ctrl had child player-scoped ctrls
  actionBy: (key, player) ->
    player.act key, @get 'model'


