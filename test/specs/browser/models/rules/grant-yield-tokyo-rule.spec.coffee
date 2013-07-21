describe 'App.GrantYieldTokyoRule', ->

  game = null
  rule = App.GrantYieldTokyoRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'in roll-dice phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'roll-dice'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'grants action to any player hit in tokyo', ->
      aPlayer = game.get('players')[1]
      aPlayer.hasAction('yieldTokyo').should.be.false
      aPlayer.set 'states.turn.hit', true
      aPlayer.set 'isInTokyo', true
      rule.exec game
      aPlayer.hasAction('yieldTokyo').should.be.true

    it 'will not grant yield to currentPlayer in tokyo', ->
      currentPlayer = game.get('currentPlayer')
      currentPlayer.set 'states.turn.hit', true
      currentPlayer.set 'isInTokyo', true
      rule.exec game
      currentPlayer.hasAction('yieldTokyo').should.be.false

