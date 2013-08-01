describe 'App.VastStormCard', ->

  game = null
  card = App.VastStormCard.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#usable', ->

    it 'is always usable', ->
      card.usable().should.be.true

  describe '#exec', ->

    it 'adds 2 points', ->
      aPlayer = game.get('players')[1]
      card.exec game, aPlayer
      aPlayer.get('score').should.eql 2

    it 'it takes 1 energy for every 2 energy from all other players', ->
      players = game.get('players')
      player.addEnergy(5) for player in players
      aPlayer = players[1]
      card.exec game, aPlayer
      player.get('energy').should.eql(3) for player in game.getPlayersBesides(aPlayer)
      aPlayer.get('energy').should.eql(5)




