module.exports = (grunt) ->

  grunt.initConfig

    pkg: grunt.file.readJSON 'package.json'

    less:
      shape:
        files:
          'dist/shapes.css': 'less/dist.less'

    sass:
      shape:
        files:
          'dist/shapes.css': 'sass/dist.scss'

    watch:
      shape:
        files: ['sass/*.scss']
        tasks: ['build']

    grunt.loadNpmTasks 'grunt-contrib-sass'
    grunt.loadNpmTasks 'grunt-contrib-watch'

    grunt.registerTask 'default', 'sass'
