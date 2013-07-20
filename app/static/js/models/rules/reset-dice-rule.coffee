App.ResetDiceRule = App.Rule.extend

  applies: (game) ->
    game.get('currentPhase') is 'end-turn'

  exec: (game) ->
    game.set 'dice', (App.Die.create() for num in [1..6])
    game.set 'rollNum', 1