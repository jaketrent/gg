# Things a player can do in different situations in the game
App.YieldTokyoAction = App.Action.extend

  exec: (game, actor) ->
    actor.set 'isInTokyo', false
    game.set 'currentPlayer.isInTokyo', true

  toString: ->
    "yieldTokyo"
