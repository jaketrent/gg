App.DiceEnterTokyoRule = App.Rule.extend

  applies: (game) ->
    endPhase = game.get('states.phase') is 'end'
    emptyTokyo = not game.isPlayerInTokyo()
    endPhase and emptyTokyo

  exec: (game) ->
    game.get('currentPlayer').set 'isInTokyo', true