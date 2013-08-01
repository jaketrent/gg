App.ApartmentBuildingCard = App.EnergyCard.extend

  name: "Apartment Building"
  cost: 5
  permanent: false
  image: "/img/cards/apartment-building.jpg"

  exec: (game, actor) ->
    actor.addScore 3

