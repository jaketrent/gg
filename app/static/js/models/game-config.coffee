App.GameConfig = App.Model.extend

  init: ->
    @defaultPlayersMeta = [
        name: 'The King'
        avatar: 'avatar-1'
      ,
        name: 'Cyber Bunny'
        avatar: 'avatar-2'
      ,
        name: 'Gigasaur'
        avatar: 'avatar-3'
      ,
        name: 'Mekka Dragon'
        avatar: 'avatar-4'
    ]
    @players = []
    for num in [0..1]
      @addPlayer()

  addPlayer: ->
    players = @get('players')
    meta = @defaultPlayersMeta[players.length]
    newPlayer = App.Player.create
      name: meta?.name || "Player #{players.length + 1}"
    if meta?
      newPlayer.setAvatar meta.avatar
    players.addObject newPlayer
