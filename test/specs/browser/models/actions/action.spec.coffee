describe 'App.Action', ->

  it 'has a grantPhase attr that defaults to roll-dice', ->
    action = App.Action.create()
    action.get('grantPhase').should.eql 'roll-dice'

  it 'has an expirePhase attr that defaults to resolve-dice', ->
    action = App.Action.create()
    action.get('expirePhase').should.eql 'resolve-dice'

  it 'has an exec fn', ->
    action = App.Action.create()
    expect(_.isFunction action.exec).to.be.true

  it 'has a toString fn', ->
    action = App.Action.create()
    expect(_.isFunction action.toString).to.be.true
