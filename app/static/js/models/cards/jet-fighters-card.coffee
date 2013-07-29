App.JetFightersCard = App.EnergyCard.extend

  name: "Jet Fighters"
  cost: 5
  permanent: false

  exec: (game, actor) ->
    actor.addScore 5
    actor.receiveAttack 4, false

