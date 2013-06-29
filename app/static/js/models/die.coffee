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
    @activeFace = @faces[@getRandomInt 0, 5]

  toString: ->
    @activeFace.toString()