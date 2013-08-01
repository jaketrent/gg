App.CardView = Ember.View.extend
  tagName: 'li'

  classNameBindings: ['baseClassName', 'isExpanded', 'isOnDeck', 'isAffordable']
  baseClassName: 'player-cards-item'
  isExpanded: (->
    @get('content').get('isExpanded')
  ).property('content.isExpanded')
  isOnDeck: (->
    @get('content').get('isOnDeck')
  ).property('content.isOnDeck')
  isAffordable: (->
    @get('player')?.get('energy') >= @get('content').get('cost')
  ).property('player.energy')
