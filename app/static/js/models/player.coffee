App.Player = App.Model.extend

  init: ->
    # @abilities = {}
    @health = 10
    @score = 0
    @energy = 0
    @isInTokyo = false
    # @name from constructor

  receiveAttack: (attack) ->
    postAttackHealth = @get('health') - attack
    @set 'health', if postAttackHealth >= 0 then postAttackHealth else 0

