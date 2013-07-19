###
  Who has rules?
   - game (base)
   - players have cards have rules
###

###
  Concept of
  - Overriding a base rule?
###

App.Rule = App.Model.extend

  priority: 1

  applies: (game) ->
    false

  exec: (game) ->
