App.WinByScoreRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'end-turn'

  exec: (game) ->
    for player in game.get('players') when player.get('score') >= 20
      player.set 'isWinner', true
      player.addClassName 'is-winner'
      game.set 'winningPlayer', player
      game.set 'currentPhase', 'game-end'