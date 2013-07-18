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
  
  var hashTypes;
  hashTypes = {'contentBinding': "STRING"};
  data.buffer.push(escapeExpression(helpers.view.call(depth0, "App.DieView", {hash:{
    'contentBinding': ("die")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  }

function program3(depth0,data) {
  
  var buffer = '';
  return buffer;
  }

  data.buffer.push("<div class=\"game\"><div class=\"game-actions\"><img class=\"game-title\" src=\"/img/kingoftokyo.jpg\" alt=\"King of Tokyo\" /><button class=\"btn game-action-btn\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "rollDice", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Roll # ");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "rollNum", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</button><button class=\"btn alt-btn game-action-btn\" ");
  hashTypes = {'on': "STRING"};
  data.buffer.push(escapeExpression(helpers.action.call(depth0, "resetDice", {hash:{
    'on': ("click")
  },contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push(">Reset</button></div><h3 class=\"dice-title\">Players: ");
  hashTypes = {};
  data.buffer.push(escapeExpression(helpers._triageMustache.call(depth0, "players.length", {hash:{},contexts:[depth0],types:["ID"],hashTypes:hashTypes,data:data})));
  data.buffer.push("</h3><ul class=\"dice\">");
  hashTypes = {};
  stack1 = helpers.each.call(depth0, "die", "in", "dice", {hash:{},inverse:self.program(3, program3, data),fn:self.program(1, program1, data),contexts:[depth0,depth0,depth0],types:["ID","ID","ID"],hashTypes:hashTypes,data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("</ul></div>");
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

  data.buffer.push("<div class=\"home\"><img class=\"home-title\" src=\"/img/kingoftokyo.jpg\" alt=\"King of Tokyo\" /><h2 class=\"home-subtitle\">Roller</h2><ul class=\"main-nav-list\"><li class=\"main-nav-item\">");
  hashTypes = {'class': "STRING"};
  options = {hash:{
    'class': ("btn main-nav-link")
  },inverse:self.program(3, program3, data),fn:self.program(1, program1, data),contexts:[depth0],types:["STRING"],hashTypes:hashTypes,data:data};
  stack2 = ((stack1 = helpers.linkTo),stack1 ? stack1.call(depth0, "game", options) : helperMissing.call(depth0, "linkTo", "game", options));
  if(stack2 || stack2 === 0) { data.buffer.push(stack2); }
  data.buffer.push("</li></ul></div>");
  return buffer;
  
});