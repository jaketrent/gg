App.GameRoute = Ember.Route.extend
  model: (params)->
    App.Game.create()
