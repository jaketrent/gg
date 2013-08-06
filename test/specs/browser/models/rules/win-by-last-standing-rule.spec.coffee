describe 'App.WinByLastStandingRule', ->

  game = null
  rule = App.WinByLastStandingRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'in end-turn phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'end-turn'
      rule.applies(game).should.be.true

  describe '#exec', ->

    deadPlayer = null

    beforeEach ->
      deadPlayer = game.get('players')[1]
      deadPlayer.set 'isDead', true

    it 'sets isWinner for last monster standing', ->
      rule.exec game
      game.get('currentPlayer').get('isWinner').should.be.true

    it 'sets is-winner className', ->
      rule.exec game
      expect(game.get('currentPlayer').get('className').indexOf("is-winner") > -1).to.be.true

    it 'set winningPlayer on game', ->
      rule.exec game
      game.get('winningPlayer').should.eql game.get('currentPlayer')
