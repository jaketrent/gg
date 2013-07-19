App.DiceHealthRule = App.Rule.extend

  applies: (game) ->
    game.get('states.phase') is 'resolve-dice'

  exec: (game) ->
    health = 0
    for die in game.get 'dice'
      if die.isHealth()
        ++health
    sumHealth = game.get('currentPlayer.health') + health
    game.set 'currentPlayer.health', if sumHealth >= 10 then 10 else sumHealth
