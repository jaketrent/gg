describe 'App.ClearTurnStateRule', ->

  game = null
  rule = App.ClearTurnStateRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in end-turn phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'end-turn'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'clears all turn state', ->
      game.set 'currentPlayer.states.turn.something', 'val'
      rule.exec game
      _.keys(game.get('currentPlayer.states.turn')).length.should.eql 0
