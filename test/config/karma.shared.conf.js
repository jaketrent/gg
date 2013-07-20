
// base path, that will be used to resolve files and exclude
exports.basePath = './../../';


// list of files / patterns to load in the browser
exports.files = [
  // vendor
  'app/static/js/components/jquery/jquery.js',
  'app/static/js/components/handlebars/handlebars.js',
  'app/static/js/vendor/ember-1.0.0-rc.1.js',
  'app/static/js/components/underscore/underscore.js',
  'app/static/js/components/fastclick/lib/fastclick.js',

  // bootstrap test app
  'test/specs/browser/app.coffee',

  // app
  'app/static/js/config/**/*.coffee',
  'app/static/js/helpers/**/*.coffee',
  'app/static/js/mixins/**/*.coffee',
  'app/static/js/models/model.coffee',
  'app/static/js/models/rules/rule.coffee',
  'app/static/js/models/actions/action.coffee',
  'app/static/js/models/player.coffee',
  'app/static/js/models/**/*.coffee',
  'app/static/js/controllers/**/*.coffee',
  'app/static/js/routes/**/*.coffee',
  'app/static/js/views/**/*.coffee',
  'app/static/js/../templates/**/*.coffee',

  // test helpers
  'node_modules/chai/chai.js',

  // tests
  'test/config/mocha-globals.coffee',
  'test/specs/browser/**/*.coffee'
];


// list of files to exclude
exports.exclude = [];


// test results reporter to use
// possible values: 'dots', 'progress', 'junit'
exports.reporters = ['progress'];


// web server port
exports.port = 8080;


// cli runner port
exports.runnerPort = 9100;


// enable / disable colors in the output (reporters and logs)
exports.colors = true;


// enable / disable watching file and executing tests whenever any file changes
exports.autoWatch = true;


// Start these browsers, currently available:
// - Chrome
// - ChromeCanary
// - Firefox
// - Opera
// - Safari (only Mac)
// - PhantomJS
// - IE (only Windows)
exports.browsers = ['Chrome'];


// If browser does not capture in given timeout [ms], kill it
exports.captureTimeout = 5000;


// Continuous Integration mode
// if true, it capture browsers, run tests and exit
exports.singleRun = false;
