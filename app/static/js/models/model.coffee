App.Model = Ember.Object.extend

  # TODO: put this in a utility class, not in the model
  getRandomInt: (min, max) ->
    Math.floor(Math.random() * (max - min + 1)) + min
