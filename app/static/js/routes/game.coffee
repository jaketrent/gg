App.GameRoute = Ember.Route.extend
  model: ->
    dice: [
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
    ]
    rollNum: 1