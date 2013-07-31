App.CardView = Ember.View.extend
  tagName: 'li'

  classNameBindings: ['baseClassName', 'isExpanded']
  baseClassName: 'player-cards-item'
  isExpanded: (->
    @get('content').get('isExpanded')
  ).property('content.isExpanded')
