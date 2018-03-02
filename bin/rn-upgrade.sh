#!/bin/sh
ncu -ua
yarn

react-native upgrade
react-native link
