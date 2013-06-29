App.GameController = Ember.ObjectController.extend
  putDieInPlay: (die) ->
    console.log 'put die in play'
    console.log die.toString()
    @get('model.inhold').removeObject die
    @get('model.inplay').pushObject die

  putDieInHold: (die) ->
    console.log 'put die in hold'
    console.log die.toString()
    @get('model.inplay').removeObject die
    @get('model.inhold').pushObject die
