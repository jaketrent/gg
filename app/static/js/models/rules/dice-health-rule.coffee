App.DiceHealthRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    health = 0
    for die in game.get 'dice'
      if die.isHealth()
        ++health
    currentPlayer = game.get('currentPlayer')
    sumHealth = currentPlayer.get('health') + health
    if not currentPlayer.get('isInTokyo')
      currentPlayer.set 'health', if sumHealth >= 10 then 10 else sumHealth
