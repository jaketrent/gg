App.MonsterDeathRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    for player in game.get('players')
      if player.get('health') is 0
        player.set 'isDead', true
        player.addClassName 'is-dead'