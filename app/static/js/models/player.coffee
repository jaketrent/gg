App.Player = App.Model.extend

  init: ->
    @actions = {}
    @health = 10
    @score = 0
    @energy = 0
    @isInTokyo = false
    # @name from constructor

  receiveAttack: (attack) ->
    postAttackHealth = @get('health') - attack
    @set 'health', if postAttackHealth >= 0 then postAttackHealth else 0

  hasAction: (key) ->
    @get("actions.#{key}")?

  # TODO: figure out how to use a single key->action map to pull these
  # that I can access globally in the app
  grantAction: (action) ->
    @set "actions.#{action.toString()}", action

  act: (key, game) ->
    console.log 'acting'
    @get("actions.#{key}").exec game, @

