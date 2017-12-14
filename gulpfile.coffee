gulp = require 'gulp'
coffee = require 'gulp-coffee2'

gulp.task 'build', ->
  gulp.src('./src/**/*.coffee').pipe(coffee(bare: true)).pipe gulp.dest('./app/')

gulp.task 'watch', ['build'], -> #要在 build 完成後才能執行
  gulp.watch ['src/**/*.coffee', 'src/**/*.pug'], ['build'] 

gulp.task 'default', ['build', 'watch']
