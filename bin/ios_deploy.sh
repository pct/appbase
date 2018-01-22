#!/bin/sh
DEVICE_NAME='pct_iphone'

echo 'You must `npm i -g ios-deploy` first to deploy ios app from command line'

react-native bundle --entry-file index.js --platform ios --dev false --bundle-output ios/main.jsbundle --assets-dest ios

react-native run-ios --device $DEVICE_NAME --configuration Release
