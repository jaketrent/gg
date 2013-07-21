App.GrantYieldTokyoRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    currentPlayer = game.get 'currentPlayer'
    isHit = currentPlayer.get('states.turn.hit')
    inTokyo = currentPlayer.get('isInTokyo')
    console.log "#{currentPlayer.get('name')} inTokyo: #{inTokyo} and isHit: #{isHit}"
    if inTokyo and isHit
      currentPlayer.grantAction App.YieldTokyoAction.create()
