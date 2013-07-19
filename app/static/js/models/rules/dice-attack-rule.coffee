App.DiceAttackRule = App.Rule.extend

  applies: (game) ->
    game.get('states.phase') is 'end'

  exec: (game) ->
    attack = 0
    ++attack for die in game.get('dice') when die.isAttack()
    player.receiveAttack(attack) for player in game.getNonCurrentPlayers()
