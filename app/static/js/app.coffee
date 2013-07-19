#= require components/jquery/jquery.js
#= require components/handlebars/handlebars.js
#= require vendor/ember-1.0.0-rc.1.js
#= require components/underscore/underscore.js
#= require components/fastclick/lib/fastclick.js

#= require_self

#= require_tree config
#= require_tree helpers
#= require_tree mixins
#= require models/model
#= require models/rules/rule
#= require models/player
#= require_tree models
#= require_tree controllers
#= require_tree routes
#= require_tree views
#= require_tree ../templates

# disable 300ms click delay on mobile devices
$ ->
  FastClick.attach document.body

window.App = Ember.Application.create()


