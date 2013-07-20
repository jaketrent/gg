App.GrantYieldTokyoRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'resolve-dice'

  exec: (game) ->
    currentPlayer = game.get 'currentPlayer'
    if currentPlayer.get('isInTokyo') and currentPlayer.get('states.turn.hit')
      currentPlayer.grantAction App.YieldTokyoAction.create()
