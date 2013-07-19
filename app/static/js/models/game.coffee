App.Game = App.Model.extend

  init: ->
    @states = {}
    @rules = [
      App.DiceScoreRule.create()
    ]
    @resetDice()
    @players = (App.Player.create { name: "Player #{num}" } for num in [1..2])
    @set 'currentPlayerIndx', 0
    @set 'currentPlayer', @players[@get 'currentPlayerIndx']

  endTurn: ->
    console.log 'end turn'
    @set 'states.phase', 'end'
    @processRules()
    # @score()
    @countEnergy()
    @resetDice()
    @nextPlayer()

  processRules: ->
    console.log 'processing'
    for rule in @rules
      console.log rule
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

  # TODO: convert to generic rule
  # TODO: create specs for rules
  score: ->
    console.log 'scoring'
    score = 0
    tallies = {}
    dice = @get 'dice'

    for die in dice
      if die.isNumber()
        console.log "is number"
        if _.has tallies, die.activeFace
          tallies[die.activeFace] += 1
        else
          tallies[die.activeFace] = 1

    for faceKey, tally of tallies
      face = parseInt faceKey, 10
      console.log "faceKey: #{faceKey}, tally: #{tally}"
      if tally is 3
        score += face
      else if tally > 3
        score += face  + (tally - 3)

    console.log "add score: #{score}"
    @set 'currentPlayer.score', @get('currentPlayer.score') + score

  # TODO: convert to generic rule
  countEnergy: ->
    energy = 0
    for die in @get 'dice'
      if die.isEnergy()
        ++energy
    @set 'currentPlayer.energy', @get('currentPlayer.energy') + energy




