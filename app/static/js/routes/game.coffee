App.GameRoute = Ember.Route.extend
  model: ->
    [
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
      App.Die.create()
    ]