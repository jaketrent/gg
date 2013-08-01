describe 'App.EvacuationOrdersCard', ->

  game = null
  card = App.EvacuationOrdersCard.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#usable', ->

    it 'is always usable', ->
      card.usable().should.be.true

  describe '#exec', ->

    it 'takes 5 points from all other monsters', ->
      players = game.get('players')
      player.set('score', 6) for player in players
      aPlayer = players[1]
      card.exec game, aPlayer
      aPlayer.get('score').should.eql 6
      player.get('score').should.eql 1 for player in game.getPlayersBesides(aPlayer)
