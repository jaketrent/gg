describe 'App.DiceAttackRule', ->

  game = null
  rule = App.DiceAttackRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in end state', ->
      rule.applies(game).should.be.false
      game.set 'states.phase', 'end'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'has 0 attack by default', ->
      rule.exec game
      player.get('health').should.eql(10) for player in game.get('players')

    it 'if in tokyo, attacks all players outside tokyo', ->
      game.set 'currentPlayer.isInTokyo', true
      game.setDice ['A', '1', '2', 'A', 'A', 'E']
      rule.exec game
      player.get('health').should.eql(7) for player in game.getPlayersOutsideTokyo()

    it 'doesnt let health go below 0', ->
      player.set('health', 3) for player in game.getNonCurrentPlayers()
      game.setDice ['A', 'A', 'A', 'A', 'A', 'E']
      rule.exec game
      player.get('health').should.eql 0 for player in game.getNonCurrentPlayers()
