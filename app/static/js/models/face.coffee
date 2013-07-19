App.Face = App.Model.extend

  isNumber: ->
    maybeNum = parseInt(@name, 10)
    _.isNumber(maybeNum) and not _.isNaN(maybeNum)

  isEnergy: ->
    @name is "E"

  isHealth: ->
    @name is "H"

  isAttack: ->
    @name is "A"

  toString: ->
    @name
