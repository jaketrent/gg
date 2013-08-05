describe 'App.RollDiceAction', ->

  game = null
  action = App.RollDiceAction.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe 'Phases', ->
    it 'has a grantPhase of start-turn', ->
      action.get('grantPhase').should.eql 'start-turn'

    it 'has an expirePhase of roll-dice', ->
    action.get('expirePhase').should.eql 'roll-dice'

  describe '#exec', ->

    currentPlayer = null

    beforeEach ->
      currentPlayer = game.get('currentPlayer')
      currentPlayer.grantAction App.RollDiceAction.create()

    it 'rolls all dice', ->
      currentPlayer.act 'rollDice', game
      expect(die.get('activeFace')).to.not.be.undefined "" for die in game.get('dice')
      game.get('rollNum').should.eql 2

    it 'self expires after 3 rolls', ->
      currentPlayer.act 'rollDice', game
      currentPlayer.act 'rollDice', game
      currentPlayer.act 'rollDice', game
      currentPlayer.hasAction('rollDice').should.be.false



