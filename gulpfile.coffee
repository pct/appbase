gulp = require 'gulp'
coffee = require 'gulp-coffee2'
exec = require('child_process').exec

gulp.task 'build', ->
  gulp.src('./index.coffee')
    .pipe(coffee bare: on)
    .pipe(gulp.dest './')

  gulp.src('./src/**/*.coffee')
    .pipe(coffee bare: on)
    .pipe(gulp.dest './app/')

  exec 'react-native run-ios', (err, stdout, stderr) ->
    #console.error err
    #console.error stdout
    console.error stderr

gulp.task 'watch', ['build'], -> #要在 build 完成後才能執行
  gulp.watch ['src/**/*.coffee', 'src/**/*.pug'], ['build']

gulp.task 'default', ['build', 'watch']
