App.Face = App.Model.extend

  isNumber: ->
    maybeNum = parseInt(@name, 10)
    _.isNumber(maybeNum) and not _.isNaN(maybeNum)

  toString: ->
    @name
