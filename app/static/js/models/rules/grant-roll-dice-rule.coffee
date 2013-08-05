App.GrantRollDiceRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'start-turn'

  exec: (game) ->
    game.get('currentPlayer').grantAction App.RollDiceAction.create()