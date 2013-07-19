App.Router.reopen
  location: 'history'

window.App.Router.map ->

  # TODO: make a route for just a dice roller now that it's becoming a game
  @route 'home', { path: '/' }
  @route 'game', { path: '/game' }