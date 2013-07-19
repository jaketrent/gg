App.Player = App.Model.extend

  init: ->
    @health = 10
    @score = 0
    @energy = 0
    # @name from constructor

  receiveAttack: (attack) ->
    postAttackHealth = @get('health') - attack
    @set 'health', if postAttackHealth >= 0 then postAttackHealth else 0

