App.DieInPlayView = Ember.View.extend
  templateName: 'die'

  click: (evt) ->
    @get('controller').send 'putDieInHold', @get 'content'
