App.DiceAttackRule = App.Rule.extend

  applies: (game) ->
    game.get('states.phase') is 'end'

  exec: (game) ->
    attack = 0
    ++attack for die in game.get('dice') when die.isAttack()
    player.receiveAttack(attack) for player in game.getNonCurrentPlayers()
    # health = 0
    # for die in game.get 'dice'
    #   if die.isHealth()
    #     ++health
    # sumHealth = game.get('currentPlayer.health') + health
    # game.set 'currentPlayer.health', if sumHealth >= 10 then 10 else sumHealth
