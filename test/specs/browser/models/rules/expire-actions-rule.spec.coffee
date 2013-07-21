describe 'App.ExpireActionsRule', ->

  game = null
  rule = App.ExpireActionsRule.create()

  beforeEach ->
    game = App.Game.create()

  describe '#applies', ->

    it 'in all phases', ->
      rule.applies(game).should.be.true

  describe '#exec', ->

    it 'expires actions on all players in this appropriate phase', ->
      game.set 'currentPhase', 'end-turn'
      for player in game.get('players')
        player.grantAction App.YieldTokyoAction.create()
        player.hasAction('yieldTokyo').should.be.true

      rule.exec game
      for player in game.get('players')
        player.hasAction('yieldTokyo').should.be.false

