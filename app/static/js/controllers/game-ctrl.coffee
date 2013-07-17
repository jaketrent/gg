App.GameController = Ember.ObjectController.extend

  putDieInHold: (die) ->
    @get('model.dice').removeObject die

  rollDice: ->
    @set('model.dice', die.roll() for die in @get('model.dice'))
    @incrementProperty 'model.rollNum'

  resetDice: ->
    # todo: figure out how to either
    # - call route function from here to reset model
    # - have route call controller function when setting up model
    # so that this initial setup format is not in 2 locations
    resetModel =
      dice: [
        App.Die.create()
        App.Die.create()
        App.Die.create()
        App.Die.create()
        App.Die.create()
        App.Die.create()
      ]
      rollNum: 1

    @set 'model', resetModel