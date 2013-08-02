App.Player = App.Model.extend

  init: ->
    # TODO: create rule to clear temp state
    @states =
      turn: {}
      game: {}
    @actions = {}

    @health = 10
    @score = 0
    @energy = 0


    @isInTokyo = false
    @isWinner = false
    @isDead = false

    @deck = App.Deck.create()

    @set 'className', "players-item"

  setAvatar: (avatar) ->
    @addClassName avatar

  setActive: (game) ->
    for player in game.get('players')
      player.removeClassName('is-active')
      player.set 'isActive', false
    @addClassName('is-active')
    @set 'isActive', true

  receiveAttack: (attack, countAsHit=true) ->
    postAttackHealth = @get('health') - attack
    @set 'health', if postAttackHealth >= 0 then postAttackHealth else 0
    @set 'states.turn.hit', countAsHit and (attack > 0)

  hasAction: (key) ->
    @get("actions.#{key}")?

  # TODO: figure out how to use a single key->action map to pull these
  # that I can access globally in the app
  grantAction: (action) ->
    @set "actions.#{action.toString()}", action

  revokeAction: (key) ->
    @set "actions.#{key}", null

  act: (key, game) ->
    @get("actions.#{key}").exec game, @

  addScore: (points) ->
    sumPoints = @get('score') + points
    actualPoints = sumPoints
    if sumPoints > 20
      actualPoints = 20
    if sumPoints < 0
      actualPoints = 0
    @set 'score', actualPoints

  addEnergy: (cubes) ->
    @set 'energy', @get('energy') + cubes

  addHealth: (hearts) ->
    sumHealth = @get('health') + hearts
    @set 'health', if sumHealth >= 10 then 10 else sumHealth

  buyCard: (deck, card) ->
    deck.remove card
    @deck.add card
    card.close()
    @addEnergy -1 * card.get('cost')

  useCard: (card, game) ->
    @deck.remove card
    card.exec game, @

