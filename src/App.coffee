import React, { Component } from 'react'

import {
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native'

import { Button } from 'react-native-elements'

instructions = Platform.select
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',

export default class App extends Component
  render: ->
    <View style={styles.container}>
      <Text style={styles.welcome}>
        Welcome to React Native!
      </Text>
      <Text style={styles.instructions}>
        {instructions}
      </Text>

      <Button
        raised
        icon={{name: 'done', size: 20}}
        buttonStyle={{backgroundColor: '#4893ec'}}
        textStyle={{textAlign: 'center'}}
        title="Welcome to React Native Elements"
        onPress={() => alert 'Hello, world!'}
      />
    </View>



styles = StyleSheet.create
  container:
    flex: 1
    justifyContent: 'center'
    alignItems: 'center'
    backgroundColor: '#F5FCFF'
  welcome:
    fontSize: 20
    textAlign: 'center'
    margin: 10
  instructions:
    textAlign: 'center'
    color: '#333333'
    marginBottom: 20
