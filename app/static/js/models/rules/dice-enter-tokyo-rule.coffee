App.DiceEnterTokyoRule = App.Rule.extend

  applies: (game) ->
    game.get('states.phase') is 'end'

  exec: (game) ->
    if not game.isPlayerInTokyo() and game.getNumAttackRolled() > 0
      game.get('currentPlayer').set 'isInTokyo', true