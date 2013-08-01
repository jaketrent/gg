describe 'App.EnergizeCard', ->

  game = null
  card = App.EnergizeCard.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#usable', ->

    it 'is always usable', ->
      card.usable().should.be.true

  describe '#exec', ->

    it 'adds 9 energy', ->
      aPlayer = game.get('players')[1]
      card.exec game, aPlayer
      aPlayer.get('energy').should.eql 9




