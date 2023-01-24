import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.answerQuestion,
      @required this.questionIndex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]["questionText"] as String,
        ),
        ...(questions[questionIndex]["answers"] as List<
                String>) // ... is the spread operator and it just takes items out of a list
            .map((answer) {
          return Answer(answerQuestion,
              answer); //functor baby lfggggggg -> this says for each answer in the list of answers,
          //convert that answer to our custom Answer widget
        }).toList()
      ],
    );
  }
}
