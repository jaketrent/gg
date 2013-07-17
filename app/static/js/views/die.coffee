App.DieView = Ember.View.extend
  templateName: 'die'

  click: (evt) ->
    @get('controller').send 'toggleDieHold', @get 'content'
