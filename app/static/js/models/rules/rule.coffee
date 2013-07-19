###
  Who has rules?
   - game (base)
   - players have cards have rules
###


App.Rule = App.Model.extend

  priority: 1

  applies: (game) ->
    false

  exec: (game) ->
