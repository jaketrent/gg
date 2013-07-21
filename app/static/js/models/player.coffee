App.Player = App.Model.extend

  init: ->
    # TODO: create rule to clear temp state
    @states =
      turn: {}
      game: {}
    @actions = {}
    @health = 10
    @score = 0
    @energy = 0
    @isInTokyo = false
    @isDead = false
    @set 'className', "players-item"
    # @name from constructor

  setAvatar: (avatar) ->
    @addClassName avatar

  receiveAttack: (attack) ->
    postAttackHealth = @get('health') - attack
    @set 'health', if postAttackHealth >= 0 then postAttackHealth else 0
    @set 'states.turn.hit', attack > 0

  hasAction: (key) ->
    @get("actions.#{key}")?

  # TODO: figure out how to use a single key->action map to pull these
  # that I can access globally in the app
  grantAction: (action) ->
    @set "actions.#{action.toString()}", action

  revokeAction: (key) ->
    @set "actions.#{key}", null

  act: (key, game) ->
    @get("actions.#{key}").exec game, @

  addScore: (points) ->
    @set 'score', @get('score') + points
