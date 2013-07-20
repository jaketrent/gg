describe 'App.ResetDiceRule', ->

  game = null
  rule = App.ResetDiceRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in end-turn phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'end-turn'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'sets all the dice to inactive face', ->
      game.setDice ['A', '1', 'H', '3', 'H', 'E']
      rule.exec game
      expect(die.get('activeFace')).to.be.undefined for die in game.get('dice')

    it 'sets rollNum to 1', ->
      game.set 'rollNum', 3
      rule.exec game
      game.get('rollNum').should.eql 1

