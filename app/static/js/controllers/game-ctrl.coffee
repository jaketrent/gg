App.GameController = Ember.ObjectController.extend
  putDieInPlay: (die) ->
    console.log 'put die in play'
    console.log die

  putDieInHold: (die) ->
    console.log 'put die in hold'
    console.log die

    # inplay = @get 'model.inplay'
    # @set 'model.inplay', _.without inplay, die
    # console.log @get('model.inplay').length

    # @get('model.inplay').removeObject die

    @removeObject die
    console.log @

