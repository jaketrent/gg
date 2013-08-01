App.CornerStoreCard = App.EnergyCard.extend

  name: "Corner Store"
  cost: 3
  permanent: false
  image: "/img/cards/corner-store.jpg"

  exec: (game, actor) ->
    actor.addScore 1

