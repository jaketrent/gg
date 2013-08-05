App.RollDiceAction = App.Action.extend

  grantPhase: 'start-turn'
  expirePhase: 'roll-dice'

  rollNum: 1

  exec: (game, actor) ->
    game.set 'dice', die.roll() for die in game.get('dice')
    game.incrementProperty 'rollNum'
    @incrementProperty 'rollNum'

    if @get('rollNum') > 3
      actor.revokeAction @toString()

  toString: ->
    "rollDice"
