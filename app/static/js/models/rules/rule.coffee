###
  Who has rules?
   - game (base)
   - players have cards have rules
  When is rule resolved?
   - base rules - end of turn phase
###

###
  Concept of
  - Overriding a base rule? - perhaps extend rule it overrides
    - how to take base rule out of ruleset
###

App.Rule = App.Model.extend

  applies: (game) ->
    false

  exec: (game) ->
