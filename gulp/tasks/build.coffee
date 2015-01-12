gulp = require('gulp')
runSequence = require('run-sequence')

gulp.task 'build', ->
  runSequence(
    'install'
    'clean'
    [
      'copy'
      'templates'
      'stylesheets'
    ]
    'browser-sync'
    'watch'
  )
