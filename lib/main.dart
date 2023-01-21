// can use 'var' key word as a general type for a variable but don't use if you
// don't need it

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()); // if parameters are optional, you have to insta-
  //ntiate them as such ^ - can also send in parameters in any order
}

class MyApp extends StatelessWidget {
  String msg;
  MyApp({String msg = "Hello World!"}) {
    // @required key word forces a named character to be defined. Can also use default values.
    // using {} makes the parameters optional
    this.msg = msg;
  }

  /*
  Constructor shortcut - works the same as above :
    MyApp({this.msg});
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Text(msg),
      ),
    );
  }
}
