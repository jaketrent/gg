describe 'App.DiceEnergyRule', ->

  game = null
  rule = App.DiceEnergyRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in resolve-dice phase', ->
      rule.applies(game).should.be.false
      game.set 'states.phase', 'resolve-dice'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'has 0 energy by default', ->
      rule.exec game
      game.get('currentPlayer.energy').should.eql 0

    it 'sums energy in dice', ->
      game.setDice ['E', '1', '3', '3', '3', 'E']
      rule.exec game
      game.get('currentPlayer.energy').should.eql 2

    it 'adds energy to players previous energy', ->
      game.set 'currentPlayer.energy', 2
      game.setDice ['E', '1', 'E', '3', '3', 'E']
      rule.exec game
      game.get('currentPlayer.energy').should.eql 5
