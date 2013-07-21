describe 'App.StartTurnInTokyoRule', ->

  game = null
  rule = App.StartTurnInTokyoRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'is start-turn phase', ->
      game.set 'currentPhase', 'start-turn'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'gives the player 2 points if turn is started in tokyo', ->
      game.set 'currentPlayer.isInTokyo', true
      rule.exec game
      game.get('currentPlayer.score').should.eql 2
