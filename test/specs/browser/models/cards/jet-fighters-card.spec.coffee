describe 'App.JetFightersCard', ->

  game = null
  card = App.JetFightersCard.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#usable', ->

    it 'is always usable', ->
      card.usable().should.be.true

  describe '#exec', ->

    it 'adds 5 points, deals 4 damage', ->
      aPlayer = game.get('players')[1]
      card.exec game, aPlayer
      aPlayer.get('score').should.eql 5
      aPlayer.get('health').should.eql 6
      aPlayer.get('states.turn.hit').should.be.false




