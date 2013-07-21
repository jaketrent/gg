App.GameConfig = App.Model.extend

  init: ->
    @players = (App.Player.create { name: "Player #{num}" } for num in [1..2])
