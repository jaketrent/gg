
describe 'App.DiceHealthRule', ->

  game = null
  rule = App.DiceHealthRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in resolve-dice phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'resolve-dice'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'has 0 health by default', ->
      rule.exec game
      game.get('currentPlayer.health').should.eql 10

    it 'restores lost health', ->
      game.set 'currentPlayer.health', 6
      game.setDice ['H', 'H', 'H', '1', '2', '3']
      rule.exec game
      game.get('currentPlayer.health').should.eql 9

    it 'doesnt go above max health (10)', ->
      game.set 'currentPlayer.health', 6
      game.setDice ['H', 'H', 'H', 'H', 'H', 'H']
      rule.exec game
      game.get('currentPlayer.health').should.eql 10
