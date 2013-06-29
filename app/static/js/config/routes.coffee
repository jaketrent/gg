App.Router.reopen
  location: 'history'

window.App.Router.map ->

  @route 'home', { path: '/' }
  @route 'game', { path: '/roll' }