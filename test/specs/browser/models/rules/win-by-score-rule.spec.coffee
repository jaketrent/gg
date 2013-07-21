describe 'App.WinByScoreRule', ->

  game = null
  rule = App.WinByScoreRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'in end-turn phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'end-turn'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'sets isWinner for monster with 20 points', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'score', 20
      rule.exec game
      aPlayer.get('isWinner').should.be.true

    it 'sets is-winner className', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'score', 20
      rule.exec game
      expect(aPlayer.get('className').indexOf("is-winner") > -1).to.be.true

    it 'sets game phase to end-game', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'score', 20
      rule.exec game
      game.get('currentPhase').should.eql 'game-end'