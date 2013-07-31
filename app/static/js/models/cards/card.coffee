App.Card = App.Model.extend

  name: "Card"
  cost: 1
  permanent: false
  image: "/img/cards/default.jpg"
  className: "player-cards-item"

  usable: (game) ->
    true

  # need explicit actor since non-current player can take actions
  exec: (game, actor) ->

  expand: ->
    console.log 'expando'
    @addClassName "is-expanded"

  close: ->
    console.log 'removo'
    @removeClassName "is-expanded"


