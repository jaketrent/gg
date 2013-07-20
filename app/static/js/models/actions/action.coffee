# Things a player can actively do in different situations in the game
App.Action = App.Model.extend

  grantPhase: 'start-turn'
  expirePhase: 'roll-dice'

  # need explicit actor since non-current player can take actions
  exec: (actor) ->

  toString: ->
    "action-slug"
