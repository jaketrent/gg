App.Game = App.Model.extend

  init: ->
    @states = {}
    @rules = [
      App.DiceScoreRule.create()
      App.DiceEnergyRule.create()
    ]
    @resetDice()
    @players = (App.Player.create { name: "Player #{num}" } for num in [1..2])
    @set 'currentPlayerIndx', 0
    @set 'currentPlayer', @players[@get 'currentPlayerIndx']

  endTurn: ->
    @set 'states.phase', 'end'
    @processRules()
    @resetDice()
    @nextPlayer()

  processRules: ->
    for rule in @rules
      if rule.applies @
        rule.exec @

  resetDice: ->
    # TODO: move to player
    @set 'dice', (App.Die.create() for num in [1..6])
    @set 'rollNum', 1

  setDice: (faceNames) ->
    dice = @get 'dice'
    for faceName, i in faceNames
      dice[i].setActiveFace faceName
    @set 'dice', dice

  nextPlayer: ->
    indx = @get 'currentPlayerIndx'
    if indx < @players.length - 1
      @incrementProperty 'currentPlayerIndx'
    else
      @set 'currentPlayerIndx', 0
    @set 'currentPlayer', @players[@get 'currentPlayerIndx']

