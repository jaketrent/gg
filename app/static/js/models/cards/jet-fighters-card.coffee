App.JetFightersCard = App.EnergyCard.extend

  name: "Jet Fighters"
  cost: 5
  permanent: false
  image: "/img/cards/jet-fighters.jpg"

  exec: (game, actor) ->
    actor.addScore 5
    actor.receiveAttack 4, false

