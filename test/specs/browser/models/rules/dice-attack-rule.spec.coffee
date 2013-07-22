describe 'App.DiceAttackRule', ->

  game = null
  rule = App.DiceAttackRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'in roll-dice phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'roll-dice'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'has 0 attack by default', ->
      rule.exec game
      player.get('health').should.eql(10) for player in game.get('players')

    it 'attacks all players outside tokyo if in tokyo', ->
      game.set 'currentPlayer.isInTokyo', true
      game.setDice ['A', '1', '2', 'A', 'A', 'E']
      rule.exec game
      player.get('health').should.eql(7) for player in game.getPlayersOutsideTokyo()

    it 'attacks all players in tokyo if outside tokyo', ->
      game.set 'currentPlayer.isInTokyo', false
      otherPlayer = game.get('players')[1]
      otherPlayer.set 'isInTokyo', true

      game.setDice ['A', '1', '2', 'A', 'A', 'E']
      rule.exec game
      player.get('health').should.eql(7) for player in game.getPlayersInTokyo()

    it 'doesnt let health go below 0', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'isInTokyo', true
      aPlayer.set 'health', 3
      game.setDice ['A', 'A', 'A', 'A', 'A', 'E']
      rule.exec game
      aPlayer.get('health').should.eql 0

    it 'sets states.turn.hit', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'isInTokyo', true
      game.setDice ['A', 'A', 'A', 'A', 'A', 'E']
      rule.exec game
      aPlayer.get('states.turn.hit').should.be.true

    it 'doesnt set states.turn.hit if no attack rolled', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'isInTokyo', true
      game.setDice ['1', 'E', '3', '2', '3', 'E']
      rule.exec game
      aPlayer.get('states.turn.hit').should.be.false

