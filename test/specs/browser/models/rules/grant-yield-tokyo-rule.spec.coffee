describe 'App.GrantYieldTokyoRule', ->

  game = null
  rule = App.GrantYieldTokyoRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in resolve-dice phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'resolve-dice'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'grants action to current player hit in tokyo', ->
      game.get('currentPlayer').hasAction('yieldTokyo').should.be.false
      game.set 'currentPlayer.states.turn.hit', true
      game.set 'currentPlayer.isInTokyo', true
      rule.exec game
      game.get('currentPlayer').hasAction('yieldTokyo').should.be.true


