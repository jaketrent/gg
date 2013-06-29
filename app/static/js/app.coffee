#= require components/jquery/jquery.js
#= require components/handlebars/handlebars.js
#= require vendor/ember.js
#= require vendor/ember-data.js
#= require components/underscore/underscore.js
#= require components/fastclick/lib/fastclick.js

#= require_self

#= require_tree config
#= require_tree controllers
#= require_tree helpers
#= require_tree mixins
#= require_tree models
#= require_tree routes

# disable 300ms click delay on mobile devices
$ ->
  FastClick.attach document.body

window.App = Ember.Application.create()


