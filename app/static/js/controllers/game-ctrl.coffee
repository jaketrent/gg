App.GameController = Ember.ObjectController.extend

  toggleDieHold: (die) ->
    die.toggleHold()

  rollDice: ->
    @set('model.dice', die.roll() for die in @get('model.dice'))
    @incrementProperty 'model.rollNum'

  resetDice: ->
    @get('model').resetDice()