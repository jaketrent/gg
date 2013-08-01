describe 'App.NuclearPowerPlantCard', ->

  game = null
  card = App.NuclearPowerPlantCard.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#usable', ->

    it 'is always usable', ->
      card.usable().should.be.true

  describe '#exec', ->

    it 'adds 2 points and 3 health', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'health', 5
      card.exec game, aPlayer
      aPlayer.get('health').should.eql 8
      aPlayer.get('score').should.eql 2
