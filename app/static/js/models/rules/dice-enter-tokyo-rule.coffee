App.DiceEnterTokyoRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    if not game.isPlayerInTokyo() and game.isAttackRolled()
      currentPlayer = game.get('currentPlayer')
      currentPlayer.set 'isInTokyo', true
      currentPlayer.addScore 1
      currentPlayer.addClassName "is-in-tokyo"
