// can use 'var' key word as a general type for a variable but don't use if you
// don't need it

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';

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

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What's your favourite colour?",
      "answers": ['Red', 'Green', 'Blue', 'Yellow']
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": ['Lion', 'Tiger', 'Bear', 'Frog']
    },
    {
      "questionText": "Who's your favourite instructor?",
      "answers": ['Max', 'mAx', 'maX', 'MAX']
    },
  ];
  //underscore before name makes the class private
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
    if (_questionIndex > _questions.length) {
      print("We have more questions!");
    } else {
      print("No more questions!");
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length //Boolean within widget tree
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Center(
                child: Text("You Did It"),
              ),
      ),
    );
  }
}
