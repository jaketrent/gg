describe 'App.Rule', ->

  it 'has default priority of 1', ->
    rule = App.Rule.create()
    rule.priority.should.eql 1

  it 'has an applies fn that returns a boolean', ->
    rule = App.Rule.create()
    expect(_.isBoolean rule.applies()).to.be.true

  it 'has an exec fn', ->
    rule = App.Rule.create()
    expect(_.isFunction rule.exec).to.be.true