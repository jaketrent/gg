App.Game = App.Model.extend

  init: ->
    @states = {}
    @rules = [
      App.DiceAttackRule.create()
      App.DiceHealthRule.create()
      App.DiceScoreRule.create()
      App.DiceEnergyRule.create()
      App.DiceEnterTokyoRule.create()
    ]
    @resetDice()
    @players = (App.Player.create { name: "Player #{num}" } for num in [1..2])
    @set 'currentPlayerIndx', 0
    @set 'currentPlayer', @players[@get 'currentPlayerIndx']

  endTurn: ->
    @set 'states.phase', 'resolve-dice'
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
    @set 'states.phase', 'roll'

  getNonCurrentPlayers: ->
    player for player, i in @get('players') when i isnt @get 'currentPlayerIndx'

  isPlayerInTokyo: ->
    @getPlayersInTokyo().length > 0

  getPlayersInTokyo: ->
    player for player in @get('players') when player.get 'isInTokyo'

  getPlayersOutsideTokyo: ->
    player for player in @get('players') when not player.get 'isInTokyo'

  getNumAttackRolled: ->
    (die for die in @get('dice') when die.isAttack()).length

  isAttackRolled: ->
    @getNumAttackRolled() > 0

  doSomething: (actionKey, player) ->
    console.log "doing something"
    player.act actionKey, @
