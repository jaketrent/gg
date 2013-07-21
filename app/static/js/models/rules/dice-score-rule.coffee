App.DiceScoreRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'roll-dice'

  exec: (game) ->
    score = 0
    tallies = {}
    dice = game.get 'dice'

    for die in dice
      if die.isNumber()
        if _.has tallies, die.activeFace
          tallies[die.activeFace] += 1
        else
          tallies[die.activeFace] = 1

    for faceKey, tally of tallies
      face = parseInt faceKey, 10
      if tally is 3
        score += face
      else if tally > 3
        score += face  + (tally - 3)

    game.get('currentPlayer').addScore score


