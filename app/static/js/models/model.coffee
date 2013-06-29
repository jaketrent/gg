App.Model = Ember.Object.extend

  getRandomInt: (min, max) ->
    Math.floor(Math.random() * (max - min + 1)) + min
