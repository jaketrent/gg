describe 'App.DiceScoreRule', ->

  game = null
  rule = App.DiceScoreRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in resolve-dice phase', ->
      rule.applies(game).should.be.false
      game.set 'states.phase', 'resolve-dice'
      rule.applies(game).should.be.true

  describe '#exec', ->

    describe 'Number combos', ->

      it 'scores 0 by default', ->
        rule.exec game
        game.get('currentPlayer.score').should.eql 0

      it 'scores 1 on a set of 3 1-dice', ->
        game.setDice ['1', '1', '1']
        rule.exec game
        game.get('currentPlayer.score').should.eql 1

      it 'scores 2 on a set of 4 1-dice', ->
        game.setDice ['1', '1', '1', '1']
        rule.exec game
        game.get('currentPlayer.score').should.eql 2

      it 'scores 4 on a set of 6 1-dice', ->
        game.setDice ['1', '1', '1', '1', '1', '1']
        rule.exec game
        game.get('currentPlayer.score').should.eql 4

      it 'scores 2 on a set of 3 2-dice', ->
        game.setDice ['2', 'E', '2', 'H', '2', 'A']
        rule.exec game
        game.get('currentPlayer.score').should.eql 2

      it 'scores 4 on a set of 5 2-dice', ->
        game.setDice ['H', '2', '2', '2', '2', '2']
        rule.exec game
        game.get('currentPlayer.score').should.eql 4

      it 'scores 3 on a set of 3 3-dice', ->
        game.setDice ['H', '2', '3', '3', '2', '3']
        rule.exec game
        game.get('currentPlayer.score').should.eql 3

      it 'scores 6 on a set of 6 3-dice', ->
        game.setDice ['3', '3', '3', '3', '3', '3']
        rule.exec game
        game.get('currentPlayer.score').should.eql 6

      it 'scores 0 with no set of 3', ->
        game.setDice ['3', '1', '2', '2', '3', '1']
        rule.exec game
        game.get('currentPlayer.score').should.eql 0

      it 'scores sets of 3 separately', ->
        game.setDice ['3', '3', '2', '2', '3', '2']
        rule.exec game
        game.get('currentPlayer.score').should.eql 5

    describe 'Score addition', ->

      it 'adds to currentPlayers score', ->
        game.set 'currentPlayer.score', 13
        game.setDice ['1', 'E', '2', '2', 'H', '2']
        rule.exec game
        game.get('currentPlayer.score').should.eql 15

