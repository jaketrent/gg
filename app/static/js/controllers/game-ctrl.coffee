App.GameController = Ember.ObjectController.extend

  toggleDieHold: (die) ->
    die.toggleHold()

  rollDice: ->
    @set('model.dice', die.roll() for die in @get('model.dice'))
    @incrementProperty 'model.rollNum'

  endTurn: ->
    @get('model').endTurn()

  # TODO: would make more sense if game ctrl had child player-scoped ctrls
  actionBy: (key, player) ->
    console.log """actionby
      key: #{key}
      player: #{player}
    """
    player.act key, @get 'model'


