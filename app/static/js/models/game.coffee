App.Game = App.Model.extend

  init: ->
    @phases = [
      "start-turn"
      "roll-dice"
      # "buy-cards"
      "end-turn"
    ]
    @rules = [
      App.StartTurnInTokyoRule.create()
      App.DiceAttackRule.create()
      App.DiceHealthRule.create()
      App.DiceScoreRule.create()
      App.DiceEnergyRule.create()
      App.DiceEnterTokyoRule.create()
      App.GrantYieldTokyoRule.create()
      App.ExpireActionsRule.create()
      App.ResetDiceRule.create()
      App.ClearTurnStateRule.create()
      App.NextPlayerRule.create()
    ]
    @setPhase 'start-game'
    @config = App.GameConfig.create()
    # @startTurns()

  addPlayer: ->
    configPlayers = @get 'config.players'
    configPlayers.addObject App.Player.create { name: "Player #{configPlayers.length + 1}" }

  startTurns: ->
    @numPlayers ?= 2
    initiallyResetDice = App.ResetDiceRule.create().exec @
    @set 'players', (App.Player.create { name: player.get('name') } for player in @config.get('players'))
    @set 'currentPlayerIndx', 0
    @set 'currentPlayer', @players[@get 'currentPlayerIndx']
    @get('currentPlayer').addClassName 'is-current-player'
    @setPhase 'start-turn'
    console.log 'starting turn'

  setPhase: (phase) ->
    @set 'currentPhase', phase
    @set 'className', "game #{phase}"

  nextPhase: ->
    @processRules()

    indx = @phases.indexOf(@get('currentPhase'))
    if indx < @phases.length - 1
      @setPhase @phases[indx + 1]
    else
      @setPhase @phases[0]

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
