import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText); //shortcut constructor

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
