matchdep = require 'matchdep'

module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')

    clean:
      build: ['build']
      tmpTemplates: [ 'build/templates', 'templates' ]


    watch:
      ember_templates:
        files: ['app/views/templates/**/*.emblem']
        tasks: ['emblem', 'livereload']

    emblem:
      compile:
        files:
          "app/static/templates/ember_templates.js": ["app/views/templates/**/*.emblem"]
        options:
          root: "app/views/templates/"
          dependencies:
            jquery: "app/static/js/components/jquery/jquery.js"
            ember: "app/static/js/vendor/ember.js"
            emblem: "app/static/js/components/emblem/dist/emblem.js"
            handlebars: "app/static/js/components/handlebars/handlebars.js"

  matchdep.filterDev('grunt-*').forEach grunt.loadNpmTasks

  grunt.renameTask 'regarde', 'watch'

  grunt.registerTask 'dev', [ 'livereload-start', 'watch' ]
