App.Die = App.Model.extend

  init: ->
    @faces = [
      App.Face.create { name: '1' }
      App.Face.create { name: '2' }
      App.Face.create { name: '3' }
      App.Face.create { name: 'A' }
      App.Face.create { name: 'H' }
      App.Face.create { name: 'E' }
    ]
    @calcClassName()
    @onHold = false
    @set 'className', 'die'

  roll: ->
    if not @onHold
      @activeFace = @faces[@getRandomInt 0, 5]
      @calcClassName()
    @

  setActiveFace: (faceName) ->
    foundFace = _.find @get('faces'), (face) ->
      face.name is faceName
    @set 'activeFace', foundFace

  toggleHold: ->
    @onHold = !@onHold
    @calcClassName()

  calcClassName: ->
    classNames = 'die'
    if @activeFace?
      classNames += " icon-die-#{@activeFace.toString()}"

    if @onHold
      classNames += " is-onhold"

    @set 'className', classNames

  toString: ->
    if @activeFace?
      @activeFace.toString()
    else
      ''
  isNumber: ->
    @activeFace?.isNumber()

  isEnergy: ->
    @activeFace?.isEnergy()

  isHealth: ->
    @activeFace?.isHealth()

  isAttack: ->
    @activeFace?.isAttack()

  isRolled: ->
    @activeFace?