App.GameRoute = Ember.Route.extend
  model: ->
    inhold: []
    inplay: [
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
    ]
    rollNum: 1