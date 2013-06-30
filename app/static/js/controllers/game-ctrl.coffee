App.GameController = Ember.ObjectController.extend

  putDieInPlay: (die) ->
    @get('model.inhold').removeObject die
    @get('model.inplay').pushObject die

  putDieInHold: (die) ->
    @get('model.inplay').removeObject die
    @get('model.inhold').pushObject die

  rollDice: ->
    @set('model.inplay', die.roll() for die in @get('model.inplay'))
    @incrementProperty 'model.rolls'

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
      rolls: 0

    @set 'model', resetModel