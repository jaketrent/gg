App.SkyscraperCard = App.EnergyCard.extend

  name: "Skyscraper"
  cost: 6
  permanent: false
  image: "/img/cards/skyscraper.jpg"

  exec: (game, actor) ->
    actor.addScore 4

