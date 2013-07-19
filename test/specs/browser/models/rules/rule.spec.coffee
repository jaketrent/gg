describe 'App.Rule', ->

  it 'has an applies fn that returns a boolean', ->
    rule = App.Rule.create()
    expect(_.isBoolean rule.applies()).to.be.true

  it 'has an exec fn', ->
    rule = App.Rule.create()
    expect(_.isFunction rule.exec).to.be.true
