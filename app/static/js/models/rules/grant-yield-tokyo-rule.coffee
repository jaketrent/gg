App.GrantYieldTokyoRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    currentPlayer = game.get 'currentPlayer'
    for player in game.getPlayersInTokyo()
      if player.get('states.turn.hit') and player isnt currentPlayer
        player.grantAction App.YieldTokyoAction.create()
