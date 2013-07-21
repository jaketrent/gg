App.NextPlayerRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'end-turn'

  exec: (game) ->
    indx = game.get 'currentPlayerIndx'
    if indx < game.players.length - 1
      game.incrementProperty 'currentPlayerIndx'
    else
      game.set 'currentPlayerIndx', 0
    nextPlayer = game.players[game.get 'currentPlayerIndx']
    game.set 'currentPlayer', nextPlayer

    player.removeClassName 'is-current-player' for player in game.get('players')
    nextPlayer.addClassName 'is-current-player'
