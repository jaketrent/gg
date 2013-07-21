describe 'App.Card', ->

  it 'has a name', ->
    card = App.Card.create()
    card.name.should.eql "Card"

  it 'has a cost', ->
    card = App.Card.create()
    card.cost.should.eql 1

  it 'has a keep/discard flag', ->
    card = App.Card.create()
    expect(_.isBoolean card.permanent).to.be.true

  it 'has an usable fn that returns a boolean', ->
    card = App.Card.create()
    expect(_.isBoolean card.usable()).to.be.true

  it 'has an exec fn', ->
    card = App.Card.create()
    expect(_.isFunction card.exec).to.be.true
