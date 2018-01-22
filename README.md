## AppBase

### 更名
如果要改掉 appbase 這個名字, 請改
1. app.json
2. package.json
3. index.coffee, build to index.js (要記得改，否則會有 Application <appname> has not been registered 的 issue)

### build ios

參考 https://facebook.github.io/react-native/docs/running-on-device.html

    $ react-native bundle --entry-file index.js --platform ios --dev false --bundle-output ios/main.jsbundle --assets-dest ios



