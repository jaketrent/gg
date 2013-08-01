App.NuclearPowerPlantCard = App.EnergyCard.extend

  name: "Nuclear Power Plant"
  cost: 6
  permanent: false
  image: "/img/cards/nuclear-power-plant.jpg"

  exec: (game, actor) ->
    actor.addScore 2
    actor.addHealth 3

