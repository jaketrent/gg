describe 'App.DiceAttackRule', ->

  game = null
  rule = App.DiceAttackRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in resolve-dice phase', ->
      rule.applies(game).should.be.false
      game.set 'states.phase', 'resolve-dice'
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

    describe 'Attacking into Tokyo', ->

      it 'allows player in tokyo to yield tokyo', ->
        otherPlayer = game.getNonCurrentPlayers()[0]
        otherPlayer.set 'isInTokyo', true

        game.setDice ['A', 'A', 'A', 'A', 'A', 'E']
        rule.exec game
        otherPlayer.get('health').should.eql 5
        otherPlayer.hasAction('yieldTokyo').should.be.true

      it 'disallows player in tokyo who was not attacked to yield tokyo', ->
        otherPlayer = game.getNonCurrentPlayers()[0]
        otherPlayer.set 'isInTokyo', true

        game.setDice ['1', '2', '3', '3', '2', 'E']
        rule.exec game
        otherPlayer.get('health').should.eql 10
        otherPlayer.hasAction('yieldTokyo').should.be.false
