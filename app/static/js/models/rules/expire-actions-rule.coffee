App.ExpireActionsRule = App.Rule.extend

  applies: (game) ->
    # all phases -- can keep always true as long as rule processing
    # is only on phase transitions
    true

  exec: (game) ->
    currentPhase = game.get('currentPhase')
    for player in game.get('players')
      for key, action of player.get('actions')
        if action?.expirePhase is currentPhase
          player.revokeAction action.toString()