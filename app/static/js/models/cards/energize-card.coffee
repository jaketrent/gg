App.EnergizeCard = App.EnergyCard.extend

  name: "Energize"
  cost: 8
  permanent: false
  image: "/img/cards/energize.jpg"

  exec: (game, actor) ->
    actor.addEnergy 9

