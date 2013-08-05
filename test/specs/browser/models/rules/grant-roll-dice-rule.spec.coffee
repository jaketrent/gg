describe 'App.GrantRollDiceRule', ->

  game = null
  rule = App.GrantRollDiceRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'in start-turn phase', ->
      game.set 'currentPhase', 'start-turn'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'grants roll dice action to current player', ->
      currentPlayer = game.get('currentPlayer')
      currentPlayer.hasAction('rollDice').should.be.false
      rule.exec game
      currentPlayer.hasAction('rollDice').should.be.true
