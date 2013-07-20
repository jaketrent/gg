# Things a player can do in different situations in the game
App.Action = App.Model.extend

  applies: (game) ->
    false

  # need explicit actor since non-current player can take actions
  exec: (actor) ->

  toString: ->
    "action-slug"
