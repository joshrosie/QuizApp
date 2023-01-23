// can use 'var' key word as a general type for a variable but don't use if you
// don't need it

import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp()); // if parameters are optional, you have to insta-
  //ntiate them as such ^ - can also send in parameters in any order
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> { //underscore before name makes the class private
  // String msg;
  // MyApp({String msg = "Hello World!"}) {
  //   // @required key word forces a named character to be defined. Can also use default values.
  //   // using {} makes the parameters optional
  //   this.msg = msg;
  // }

  /*
  Constructor shortcut - works the same as above :
    MyApp({this.msg});
  */
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite colour?",
      "What's your favourite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed:
                  _answerQuestion, //this is a pointer to the answerQuestion function
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print("Answer 2 chosen!"), // Anonymous function
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //..
                print("Answer 3 chosen!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
