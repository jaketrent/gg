App.NextPlayerRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'end-turn'

  exec: (game) ->

    players = game.get 'players'

    findNextPlayerNotDead = (startIndx) ->
      nextIndx = getNextIndex startIndx
      if players[nextIndx].get 'isDead'
        findNextPlayerNotDead nextIndx
      else
        [nextIndx, players[nextIndx]]

    getNextIndex = (startIndx) ->
      if startIndx < game.players.length - 1
        startIndx + 1
      else
        0

    [nextIndx, nextPlayer] = findNextPlayerNotDead game.get 'currentPlayerIndx'

    game.set 'currentPlayer', nextPlayer
    game.set 'currentPlayerIndx', nextIndx
    
    player.removeClassName 'is-current-player' for player in game.get('players')
    nextPlayer.addClassName 'is-current-player'

    nextPlayer.setActive game
