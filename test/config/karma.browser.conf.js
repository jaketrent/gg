var _ = require('underscore');
var shared = require(__dirname + "/karma.shared.conf.js");

// shared
basePath = shared.basePath;
files = _.union([
  MOCHA,
  MOCHA_ADAPTER
], shared.files);
exclude = shared.exclude;
reporters = shared.reporters;
port = shared.port;
runnerPort = shared.runnerPort;
colors = shared.colors;
captureTimeout = shared.captureTimeout;
logLevel = LOG_INFO;

// specific
autoWatch = true;
browsers = ['Chrome'];
singleRun = false;
