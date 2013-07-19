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

  applies: (game) ->
    false

  exec: (game) ->
