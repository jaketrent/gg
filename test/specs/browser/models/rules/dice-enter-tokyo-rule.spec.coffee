describe 'App.DiceEnterTokyoRule', ->

  game = null
  rule = App.DiceEnterTokyoRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'when end state and tokyo is empty', ->
      rule.applies(game).should.be.false
      game.set 'states.phase', 'end'
      rule.applies(game).should.be.true

    it 'not when someone in tokyo', ->
      game.set 'states.phase', 'end'
      game.set 'currentPlayer.isInTokyo', true # wouldnt happen -- just *a* player
      rule.applies(game).should.be.false


  describe '#exec', ->

    it 'puts player in tokyo if attack', ->
      game.get('currentPlayer').get('isInTokyo').should.be.false
      game.setDice ['1', '2', '3', 'E', 'A', 'H']
      rule.exec game
      game.get('currentPlayer').get('isInTokyo').should.be.true
