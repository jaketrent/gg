App.DieInHoldView = Ember.View.extend
  templateName: 'die'

  click: (evt) ->
    @get('controller').send 'putDieInPlay', @get 'die'
