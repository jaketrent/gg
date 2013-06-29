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

  rollDice: ->
    @set('model.inplay', die.roll() for die in @get('model.inplay'))

  resetDice: ->
    # todo: figure out how to either
    # - call route function from here to reset model
    # - have route call controller function when setting up model
    # so that this initial setup format is not in 2 locations
    resetModel =
      inhold: []
      inplay: [
        App.Die.create()
        App.Die.create()
        App.Die.create()
        App.Die.create()
        App.Die.create()
        App.Die.create()
      ]
    @set 'model', resetModel