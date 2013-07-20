App.Game = App.Model.extend

  init: ->
    @phases = [
      "start-turn"
      "roll-dice"
      # "buy-cards"
      "end-turn"
    ]
    @currentPhase = "start-turn"
    @rules = [
      App.DiceAttackRule.create()
      App.DiceHealthRule.create()
      App.DiceScoreRule.create()
      App.DiceEnergyRule.create()
      App.DiceEnterTokyoRule.create()
      App.GrantYieldTokyoRule.create()
      App.ResetDiceRule.create()
      App.NextPlayerRule.create()
    ]
    initiallyResetDice = App.ResetDiceRule.create().exec @
    @players = (App.Player.create { name: "Player #{num}" } for num in [1..2])
    @set 'currentPlayerIndx', 0
    @set 'currentPlayer', @players[@get 'currentPlayerIndx']
    @set 'className', "game start-turn"

  nextPhase: ->
    @processRules()

    indx = @phases.indexOf(@get('currentPhase'))
    if indx < @phases.length - 1
      @set 'currentPhase', @phases[indx + 1]
    else
      @set 'currentPhase', @phases[0]
    @set 'className', "game #{@get('currentPhase')}"

    console.log "advanced to phase: #{@get('currentPhase')}"

  processRules: ->
    for rule in @rules
      if rule.applies @
        rule.exec @

  setDice: (faceNames) ->
    dice = @get 'dice'
    for faceName, i in faceNames
      dice[i].setActiveFace faceName
    @set 'dice', dice

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
