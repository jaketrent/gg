App.DiceAttackRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'resolve-dice'

  exec: (game) ->
    attack = 0
    ++attack for die in game.get('dice') when die.isAttack()
    for player in game.getNonCurrentPlayers()
      player.receiveAttack(attack)
      # if player.get('isInTokyo') and attack > 0
      #   player.grantAction App.YieldTokyoAction.create()
