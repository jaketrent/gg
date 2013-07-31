App.Card = App.Model.extend

  name: "Card"
  cost: 1
  permanent: false
  image: "/img/cards/default.jpg"
  isExpanded: false

  usable: (game) ->
    true

  # need explicit actor since non-current player can take actions
  exec: (game, actor) ->

  expand: ->
    @set 'isExpanded', true

  close: ->
    @set 'isExpanded', false


