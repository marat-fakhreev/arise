gulp = require('gulp')
config = require('../config')

gulp.task 'copy', ->
  gulp.src([
    "#{config.appDir}/**/*"
    "!#{config.appDir}/stylesheets{,/**}"
    "!#{config.appDir}/scripts{,/**}"
    "!#{config.appDir}/*.jade"
    "!#{config.appDir}/images/sprites{,/**}"
  ], base: "#{config.appDir}/")
  .pipe(gulp.dest("#{config.publicDir}"))
