App.Model = Ember.Object.extend

  # TODO: put this in a utility class, not in the model
  getRandomInt: (min, max) ->
    Math.floor(Math.random() * (max - min + 1)) + min

  # TODO: seriously need to learn how to do bindAttr in .emblem files with dynamic and static class names
  addClassName: (clazz) ->
    console.log "add class: #{clazz}"
    @set 'className', "#{@get('className')} #{clazz}"
    console.log "class name now: #{@get('className')}"

  # TODO: seriously need to learn how to do bindAttr in .emblem files with dynamic and static class names
  removeClassName: (clazz) ->
#    console.log "rm class: #{clazz}"
#    console.log "prev classname: #{@get('className')}"
    withoutClassName = @get('className').replace new RegExp(clazz, 'gi'), ''
#    console.log "withoutClassNamE: #{withoutClassName}"
    @set 'className', withoutClassName
#    console.log "class name now: #{@get('className')}"
