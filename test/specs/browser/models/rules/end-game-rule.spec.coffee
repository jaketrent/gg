describe 'App.EndGameRule', ->

  game = null
  rule = App.EndGameRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'in end-turn phase', ->
      game.set 'currentPhase', 'end-turn'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'sets game phase to end-game', ->
      aPlayer = game.get('players')[1]
      game.set 'winningPlayer', aPlayer
      rule.exec game
      game.get('currentPhase').should.eql 'end-game'