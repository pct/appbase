#!/bin/sh

echo 'You must `npm i -g ios-deploy` first!'

react-native bundle --entry-file index.js --platform ios --dev false --bundle-output ios/main.jsbundle --assets-dest ios

#react-native run-ios --device "[DEVICE NAME]"
react-native run-ios --device "pct_iphone"
