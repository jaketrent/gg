describe 'App.NextPlayerRule', ->

  game = null
  rule = App.NextPlayerRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'in end-turn phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'end-turn'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'has player 0 for currentPlayer in a new game', ->
      game.get('players').indexOf(game.get('currentPlayer').should.eql 0
      game.get('currentPlayerIndx').should.eql 0

    it 'advances currentPlayerIndx and currentPlayer', ->
      rule.exec game
      game.get('currentPlayerIndx').should.eql 1
      game.get('currentPlayer').should.eql game.get('players')[1]
