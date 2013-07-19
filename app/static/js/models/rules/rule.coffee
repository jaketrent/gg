###
  Who has rules?
   - game (base)
   - players have cards have rules
###


App.Rule = App.Model.extend

  priority: 1

  phase: 'end' # phases: roll, resolve, cards, end

  applies: (game) ->
    false

  exec: (game) ->
