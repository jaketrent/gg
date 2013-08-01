describe 'App.ApartmentBuildingCard', ->

  game = null
  card = App.ApartmentBuildingCard.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#usable', ->

    it 'is always usable', ->
      card.usable().should.be.true

  describe '#exec', ->

    it 'adds 3 points', ->
      aPlayer = game.get('players')[1]
      card.exec game, aPlayer
      aPlayer.get('score').should.eql 3




