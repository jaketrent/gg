Ember.TEMPLATES["application"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var stack1, hashTypes;


  hashTypes = {'unescaped': "STRING"};
  stack1 = helpers._triageMustache.call(depth0, "outlet", {hash:{
    'unescaped': ("true")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  else { data.buffer.push(''); }
  
});

Ember.TEMPLATES["card-for-player"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<img class=\"player-cards-item-image\" ");
  hashTypes = {'src': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'src': ("card.image")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push(" ");
  hashTypes = {'title': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'title': ("card.name")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push(" /><button class=\"btn btn-mini player-cards-item-close-btn\">&times;</button><button class=\"btn player-cards-item-use-btn\">Use</button>");
  return buffer;
  
});

Ember.TEMPLATES["card-in-deck"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<img class=\"player-cards-item-image\" ");
  hashTypes = {'src': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'src': ("card.image")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push(" ");
  hashTypes = {'title': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'title': ("card.name")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push(" /><button class=\"btn btn-mini player-cards-item-close-btn\">&times;</button><button class=\"btn player-cards-item-buy-btn\">Buy</button>");
  return buffer;
  
});

Ember.TEMPLATES["die"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', hashTypes, escapeExpression=this.escapeExpression;


  data.buffer.push("<li ");
  hashTypes = {'class': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'class': ("die.className")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push("></li>");
  return buffer;
  
});

Ember.TEMPLATES["game"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', stack1, hashTypes, escapeExpression=this.escapeExpression, self=this;

function program1(depth0,data) {
  
  var buffer = '', hashTypes;
  data.buffer.push("<li ");
  hashTypes = {'class': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'class': ("player.className")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push("><div class=\"player-avatar\"></div>");
  hashTypes = {'class': "STRING",'valueBinding': "STRING"};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "Ember.TextField", {hash:{
    'class': ("player-name-input"),
    'valueBinding': ("player.name")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</li>");
  return buffer;
  }

function program3(depth0,data) {
  
  var buffer = '';
  return buffer;
  }

function program5(depth0,data) {
  
  var buffer = '', stack1, hashTypes;
  data.buffer.push("<li ");
  hashTypes = {'class': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'class': ("player.className")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push("><div class=\"player-header\"><div class=\"player-avatar\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "setActivePlayer", "player", {hash:{
    'on': ("click")
  },contexts:[depth0,depth0],types:["ID","ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("></div><div class=\"player-name\">");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "player.name", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</div></div><ul class=\"player-stats-list\"><li class=\"player-stats-item\"><div class=\"icon icon-die-H\"></div>");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "player.health", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</li><li class=\"player-stats-item\"><div class=\"icon icon-die-E\"></div>");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "player.energy", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</li><li class=\"player-stats-item\"><div class=\"icon icon-star\"></div>");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "player.score", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</li></ul><ul class=\"player-cards-list\">");
  hashTypes = {};
  stack1 = helpers.each.call(depth0, "card", "in", "player.deck.cards", {hash:{},inverse:self.program(3, program3, data),fn:self.program(6, program6, data),contexts:[depth0,depth0,depth0],types:["ID","ID","ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("</ul><div class=\"player-status\">");
  hashTypes = {};
  stack1 = helpers['if'].call(depth0, "player.isInTokyo", {hash:{},inverse:self.program(3, program3, data),fn:self.program(11, program11, data),contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  hashTypes = {};
  stack1 = helpers['if'].call(depth0, "player.isWinner", {hash:{},inverse:self.program(3, program3, data),fn:self.program(13, program13, data),contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  hashTypes = {};
  stack1 = helpers['if'].call(depth0, "player.actions.yieldTokyo", {hash:{},inverse:self.program(3, program3, data),fn:self.program(15, program15, data),contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("</div></li>");
  return buffer;
  }
function program6(depth0,data) {
  
  var stack1, hashTypes;
  hashTypes = {};
  stack1 = helpers['if'].call(depth0, "card.permanent", {hash:{},inverse:self.program(9, program9, data),fn:self.program(7, program7, data),contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  else { data.buffer.push(''); }
  }
function program7(depth0,data) {
  
  var buffer = '', hashTypes;
  data.buffer.push("<li class=\"player-cards-item\" ");
  hashTypes = {'title': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'title': ("card.name")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push("></li>");
  return buffer;
  }

function program9(depth0,data) {
  
  var hashTypes;
  hashTypes = {'contentBinding': "STRING",'playerBinding': "STRING"};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "App.CardForPlayerView", {hash:{
    'contentBinding': ("card"),
    'playerBinding': ("player")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  }

function program11(depth0,data) {
  
  
  data.buffer.push("<div class=\"player-status-intokyo\">In Tokyo!</div>");
  }

function program13(depth0,data) {
  
  
  data.buffer.push("<div class=\"player-status-winner\">You Won!</div>");
  }

function program15(depth0,data) {
  
  var buffer = '', hashTypes;
  data.buffer.push("<button class=\"btn btn-mini yield-tokyo-btn\" href=\"#\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "actionBy", "yieldTokyo", "player", {hash:{
    'on': ("click")
  },contexts:[depth0,depth0,depth0],types:["ID","STRING","ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Yield Tokyo</button>");
  return buffer;
  }

function program17(depth0,data) {
  
  var hashTypes;
  hashTypes = {'contentBinding': "STRING",'playerBinding': "STRING"};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "App.CardInDeckView", {hash:{
    'contentBinding': ("card"),
    'playerBinding': ("currentPlayer")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  }

function program19(depth0,data) {
  
  var hashTypes;
  hashTypes = {'contentBinding': "STRING"};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "App.DieView", {hash:{
    'contentBinding': ("die")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  }

  data.buffer.push("<div ");
  hashTypes = {'class': "STRING"};
  data.buffer.push(escapeExpression(helpers.bindAttr.call(depth0, {hash:{
    'class': ("this.className")
  },contexts:[],types:[],hashTypes:hashTypes,data:data})));
  data.buffer.push("><div class=\"game-header\"><img class=\"game-title\" src=\"/img/kingoftokyo.jpg\" alt=\"King of Tokyo\" /></div><div class=\"game-config start-game\"><ul class=\"players-config-list\">");
  hashTypes = {};
  stack1 = helpers.each.call(depth0, "player", "in", "config.players", {hash:{},inverse:self.program(3, program3, data),fn:self.program(1, program1, data),contexts:[depth0,depth0,depth0],types:["ID","ID","ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("<li class=\"players-config-item\"><button class=\"btn alt-btn add-player-btn\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "addPlayer", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Add Player</button><button class=\"btn\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "startTurns", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Start Game</button></li></ul></div><div class=\"start-turn roll-dice buy-cards end-turn game-end\"><ul class=\"players-list\">");
  hashTypes = {};
  stack1 = helpers.each.call(depth0, "player", "in", "players", {hash:{},inverse:self.program(3, program3, data),fn:self.program(5, program5, data),contexts:[depth0,depth0,depth0],types:["ID","ID","ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("</ul></div><div class=\"buy-cards\"><h2>Cards</h2><ul class=\"player-cards-list game-deck\"><li class=\"player-cards-item deck-count\">");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "deck.numNotOnDeck", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</li>");
  hashTypes = {};
  stack1 = helpers.each.call(depth0, "card", "in", "deck.cards", {hash:{},inverse:self.program(3, program3, data),fn:self.program(17, program17, data),contexts:[depth0,depth0,depth0],types:["ID","ID","ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("</ul></div><div class=\"roll-dice\"><ul class=\"dice\">");
  hashTypes = {};
  stack1 = helpers.each.call(depth0, "die", "in", "dice", {hash:{},inverse:self.program(3, program3, data),fn:self.program(19, program19, data),contexts:[depth0,depth0,depth0],types:["ID","ID","ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("</ul><div class=\"actions\"><button class=\"btn alt-btn\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "nextPhase", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Done Rolling</button><button class=\"btn rollDice\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "actionBy", "rollDice", "currentPlayer", {hash:{
    'on': ("click")
  },contexts:[depth0,depth0,depth0],types:["ID","STRING","ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Roll # ");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "rollNum", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</button></div></div><div class=\"actions\"><div class=\"start-turn\"><button class=\"btn\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "nextPhase", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "currentPlayer.name", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(", Start Turn</button></div><div class=\"buy-cards\"><button class=\"btn\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "nextPhase", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Done w/ Cards</button></div><div class=\"end-turn\"><button class=\"btn\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "nextPhase", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">End Turn</button></div></div><div class=\"debug\">DEBUG: Turn: ");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "currentPlayer.name", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(", Phase: ");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "currentPhase", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(" (<a ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "nextPhase", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Next</a>)</div></div>");
  return buffer;
  
});

Ember.TEMPLATES["home"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [2,'>= 1.0.0-rc.3'];
helpers = helpers || Ember.Handlebars.helpers; data = data || {};
  var buffer = '', stack1, stack2, hashTypes, options, self=this, helperMissing=helpers.helperMissing;

function program1(depth0,data) {
  
  
  data.buffer.push("New Game");
  }

function program3(depth0,data) {
  
  var buffer = '';
  return buffer;
  }

  data.buffer.push("<div class=\"home\"><img class=\"home-title\" src=\"/img/kingoftokyo.jpg\" alt=\"King of Tokyo\" /><ul class=\"main-nav-list\"><li class=\"main-nav-item\">");
  hashTypes = {'class': "STRING"};
  options = {hash:{
    'class': ("btn main-nav-link")
  },inverse:self.program(3, program3, data),fn:self.program(1, program1, data),contexts:[depth0],types:["STRING"],hashTypes:hashTypes,data:data};
  stack2 = ((stack1 = helpers.linkTo),stack1 ? stack1.call(depth0, "game", options) : helperMissing.call(depth0, "linkTo", "game", options));
  if(stack2 || stack2 === 0) { data.buffer.push(stack2); }
  data.buffer.push("</li></ul></div>");
  return buffer;
  
});