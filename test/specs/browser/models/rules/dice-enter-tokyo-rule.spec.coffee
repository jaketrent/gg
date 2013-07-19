describe 'App.DiceEnterTokyoRule', ->

  game = null
  rule = App.DiceEnterTokyoRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'is end state', ->
      rule.applies(game).should.be.false
      game.set 'states.phase', 'end'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'puts player in tokyo if attack', ->
      game.get('currentPlayer').get('isInTokyo').should.be.false
      game.setDice ['1', '2', '3', 'E', 'A', 'H']
      rule.exec game
      game.get('currentPlayer').get('isInTokyo').should.be.true
