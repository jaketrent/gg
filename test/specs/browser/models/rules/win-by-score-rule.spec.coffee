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

    aPlayer = null

    beforeEach ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'score', 20

    it 'sets isWinner for monster with 20 points', ->
      rule.exec game
      aPlayer.get('isWinner').should.be.true

    it 'sets is-winner className', ->
      rule.exec game
      expect(aPlayer.get('className').indexOf("is-winner") > -1).to.be.true

    it 'sets winningPlayer on game', ->
      rule.exec game
      game.get('winningPlayer').should.eql aPlayer

    it 'sets game phase to end-game', ->
      rule.exec game
      game.get('currentPhase').should.eql 'game-end'