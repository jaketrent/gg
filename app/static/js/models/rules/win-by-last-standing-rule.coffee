App.WinByLastStandingRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'end-turn'

  exec: (game) ->
    notDeadPlayers = (player for player in game.get('players') when not player.get('isDead'))
    if notDeadPlayers.length is 1
      notDeadPlayers[0].set 'isWinner', true
      notDeadPlayers[0].addClassName 'is-winner'
      game.set 'currentPhase', 'game-end'