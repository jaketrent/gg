App.EvacuationOrdersCard = App.EnergyCard.extend

  name: "Evacuation Orders"
  cost: 7
  permanent: false
  image: "/img/cards/evacuation-orders.jpg"

  exec: (game, actor) ->
    player.addScore(-5) for player in game.getPlayersBesides(actor)

