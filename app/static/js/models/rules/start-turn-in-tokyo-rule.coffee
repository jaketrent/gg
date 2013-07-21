App.StartTurnInTokyoRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'start-turn'

  exec: (game) ->
    currentPlayer = game.get 'currentPlayer'
    if currentPlayer.get('isInTokyo')
      currentPlayer.addScore 2
