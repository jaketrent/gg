App.DiceAttackRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    attack = 0
    ++attack for die in game.get('dice') when die.isAttack()
    targetPlayers = if game.get('currentPlayer.isInTokyo') then game.getPlayersOutsideTokyo() else game.getPlayersInTokyo()
    for player in targetPlayers
      player.receiveAttack(attack)
