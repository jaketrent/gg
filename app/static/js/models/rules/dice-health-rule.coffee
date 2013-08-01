App.DiceHealthRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    health = 0
    for die in game.get 'dice'
      if die.isHealth()
        ++health
    currentPlayer = game.get('currentPlayer')
    if not currentPlayer.get('isInTokyo')
      currentPlayer.addHealth health