describe 'App.YieldTokyoAction', ->

  game = null
  action = App.YieldTokyoAction.create()

  beforeEach ->
    game = App.Game.create()

  describe '#exec', ->

    it 'puts acting player out of tokyo', ->
      inTokyoPlayer = game.getNonCurrentPlayers()[0]
      inTokyoPlayer.set 'isInTokyo', true
      inTokyoPlayer.grantAction App.YieldTokyoAction.create()
      inTokyoPlayer.act 'yieldTokyo', game
      inTokyoPlayer.get('isInTokyo').should.be.false



