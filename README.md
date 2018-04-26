## AppBase

### 更名

使用 react-native-rename 更名, `react-native-rename <new-name>`

    npm install react-native-rename -g

如果要改掉 appbase 這個名字, 請改
1. app.json
2. package.json
3. index.coffee, build to index.js (要記得改，否則會有 Application <appname> has not been registered 的 issue)

再

    ./bin/reset_ios_android_folder.sh

### build iOS

參考 https://facebook.github.io/react-native/docs/running-on-device.html

    $ react-native bundle --entry-file index.js --platform ios --dev false --bundle-output ios/main.jsbundle --assets-dest ios

再

    jsCodeLocation = [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];


### Build iOS Release

    react-native run-ios --configuration Release


其他
====
- Dialogs: https://www.npmjs.com/package/react-native-popup-dialog
- Image picker: https://github.com/ivpusic/react-native-image-crop-picker
- Maps: https://github.com/airbnb/react-native-maps
- Html view: https://github.com/jsdf/react-native-htmlview
- Form select: https://github.com/sohobloo/react-native-modal-dropdown




