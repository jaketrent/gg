App.EndGameRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'end-turn'

  exec: (game) ->
    if game.get('winningPlayer')?
      game.setPhase 'end-game'
