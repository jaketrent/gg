App.Game = App.Model.extend

  init: ->
    @phases = [
      "start-turn"
      "roll-dice"
      "buy-cards"
      "end-turn"
    ]
    @rules = [
      App.StartTurnInTokyoRule.create()
      App.GrantRollDiceRule.create()
      App.DiceAttackRule.create()
      App.DiceHealthRule.create()
      App.MonsterDeathRule.create()
      App.DiceScoreRule.create()
      App.DiceEnergyRule.create()
      App.DiceEnterTokyoRule.create()
      App.GrantYieldTokyoRule.create()
      App.ExpireActionsRule.create()
      App.WinByScoreRule.create()
      App.WinByLastStandingRule.create()
      App.ResetDiceRule.create()
      App.ClearTurnStateRule.create()
      App.NextPlayerRule.create()
    ]
    @setPhase 'start-game'
    @config = App.GameConfig.create()
    @deck = App.EnergyDeck.create()

  startTurns: ->
    initiallyResetDice = App.ResetDiceRule.create().exec @
    @set 'players', @config.get 'players'
    @set 'currentPlayerIndx', 0
    @set 'currentPlayer', @players[@get 'currentPlayerIndx']
    @get('currentPlayer').addClassName 'is-current-player'
    @get('currentPlayer').setActive @
    @setPhase 'start-turn'

    # TODO: Remove after endgame test
    @setPhase 'end-game'
    @set 'currentPlayer.isWinner', true

  setPhase: (phase) ->
    @set 'currentPhase', phase
    @set 'className', "game #{phase} players-#{@get('players.length')}"

  nextPhase: ->
    if @get('currentPhase') isnt 'end-game'

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

  getPlayersBesides: (otherPlayer) ->
    player for player in @get('players') when player isnt otherPlayer

  getNonCurrentPlayers: ->
    @getPlayersBesides @get 'currentPlayer'

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
