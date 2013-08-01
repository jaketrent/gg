App.VastStormCard = App.EnergyCard.extend

  name: "Vast Storm"
  cost: 6
  permanent: false
  image: "/img/cards/vast-storm.jpg"

  exec: (game, actor) ->
    depleteEnergy = (player) ->
      startingEnergy = player.get('energy')
      halfEnergy = Math.floor(startingEnergy / 2)
      player.set 'energy', startingEnergy - halfEnergy

    actor.addScore 2
    depleteEnergy(player) for player in game.getPlayersBesides(actor)

