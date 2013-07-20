describe 'App.Action', ->

  it 'has an applies fn that returns a boolean', ->
    action = App.Action.create()
    expect(_.isBoolean action.applies()).to.be.true

  it 'has an exec fn', ->
    action = App.Action.create()
    expect(_.isFunction action.exec).to.be.true

  it 'has a toString fn', ->
    action = App.Action.create()
    expect(_.isFunction action.toString).to.be.true
