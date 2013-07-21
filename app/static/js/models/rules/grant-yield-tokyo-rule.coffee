App.GrantYieldTokyoRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    for player in game.getPlayersInTokyo()
      if player.get('states.turn.hit')
        player.grantAction App.YieldTokyoAction.create()
