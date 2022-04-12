import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<dynamic, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(this.questions, this.questionIndex, this.answerQuestion,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answers'] as List<Map>).map((answer) {
          return Answer(() => answerQuestion(answer["score"]), answer['text']);
        }).toList()
      ],
    );
  }
}
