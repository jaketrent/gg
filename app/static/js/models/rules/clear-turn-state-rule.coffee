App.ClearTurnStateRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'end-turn'

  exec: (game) ->
    game.set 'currentPlayer.states.turn', {}
