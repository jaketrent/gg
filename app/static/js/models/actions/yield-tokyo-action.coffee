# Things a player can do in different situations in the game
App.YieldTokyoAction = App.Action.extend

  grantPhase: 'resolve-dice'
  expirePhase: 'end-turn'

  exec: (game, actor) ->
    actor.set 'isInTokyo', false
    game.set 'currentPlayer.isInTokyo', true

  toString: ->
    "yieldTokyo"
