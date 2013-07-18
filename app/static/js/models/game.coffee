App.Game = App.Model.extend

  init: ->
    @score = 0
    @resetDice()
    @players = (App.Player.create { name: "Player #{num}" } for num in [1..2])
    @currentPlayer = 0

  resetDice: ->
    # TODO: move to player
    @set 'dice', (App.Die.create() for num in [1..6])
    @set 'rollNum', 1