App.GameRoute = Ember.Route.extend
  model: ->
    inhold: []
    dice: [
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
    ]
    rollNum: 1