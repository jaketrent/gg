describe 'App.SkyscraperCard', ->

  game = null
  card = App.SkyscraperCard.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#usable', ->

    it 'is always usable', ->
      card.usable().should.be.true

  describe '#exec', ->

    it 'adds 4 points', ->
      aPlayer = game.get('players')[1]
      card.exec game, aPlayer
      aPlayer.get('score').should.eql 4
