App.GameRoute = Ember.Route.extend
  model: (params)->
    if _.isNumber params.numPlayers
      App.Game.create { numPlayers: params.numPlayers }
    else
      App.Game.create()