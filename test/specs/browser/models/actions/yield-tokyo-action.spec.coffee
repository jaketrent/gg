describe 'App.YieldTokyoAction', ->

  game = null
  action = App.YieldTokyoAction.create()

  beforeEach ->
    game = App.Game.create()

  describe 'Phases', ->
    it 'has a grantPhase of resolve-dice', ->
      action.get('grantPhase').should.eql 'resolve-dice'

    # TODO: check rule
    it 'has an expirePhase of resolve-dice', ->
      action.get('expirePhase').should.eql 'end-turn'

  describe '#exec', ->

    it 'puts acting player out of tokyo', ->
      inTokyoPlayer = game.getNonCurrentPlayers()[0]
      inTokyoPlayer.set 'isInTokyo', true
      inTokyoPlayer.grantAction App.YieldTokyoAction.create()
      inTokyoPlayer.act 'yieldTokyo', game
      inTokyoPlayer.get('isInTokyo').should.be.false



