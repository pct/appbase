gulp = require 'gulp'
exec = require('child_process').exec

MAX_BUFFER = 10240*1024

BUILD_CMD = './script/clean.sh; lazyalloy compile && cd app && alloy compile --config platform=ios && ti build -p ios --liveview'

UPDATE_CMD = './script/grunt_update.sh'

gulp.task 'build', ->
  exec BUILD_CMD, { maxBuffer: MAX_BUFFER },  (err) ->
    console.error err

gulp.task 'update', ->
  exec UPDATE_CMD, { maxBuffer: MAX_BUFFER },  (err) ->
    console.error err

gulp.task 'watch', ['build'], -> #要在 build 完成後才能執行
  gulp.watch ['src/**/*.coffee', 'src/**/*.jade'], ['update'] # 有變更就執行 update task

gulp.task 'default', ['build', 'watch']

