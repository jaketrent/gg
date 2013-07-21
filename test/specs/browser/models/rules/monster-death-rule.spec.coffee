
describe 'App.MonsterDeathRule', ->

  game = null
  rule = App.MonsterDeathRule.create()

  beforeEach ->
    game = App.Game.create()
    game.startTurns()

  describe '#applies', ->

    it 'in roll-dice phase', ->
      rule.applies(game).should.be.false
      game.set 'currentPhase', 'roll-dice'
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'it sets monster dead of health is at 0', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'health', 0
      aPlayer.get('isDead').should.be.false
      rule.exec game
      aPlayer.get('isDead').should.be.true

    it 'sets is-dead className', ->
      aPlayer = game.get('players')[1]
      aPlayer.set 'health', 0
      rule.exec game
      expect(aPlayer.get('className').indexOf("is-dead") > -1).to.be.true

    # TODO: make killing monster enter tokyo