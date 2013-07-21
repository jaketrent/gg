# Things a player can do in different situations in the game
App.YieldTokyoAction = App.Action.extend

  grantPhase: 'roll-dice'
  expirePhase: 'end-turn'

  exec: (game, actor) ->
    actor.set 'isInTokyo', false
    actor.removeClassName 'is-in-tokyo'
    actor.revokeAction 'yieldTokyo'

    currentPlayer = game.get 'currentPlayer'
    currentPlayer.set 'isInTokyo', true
    currentPlayer.addClassName 'is-in-tokyo'

  toString: ->
    "yieldTokyo"
