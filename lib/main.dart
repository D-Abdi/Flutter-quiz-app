import 'package:flutter/material.dart';
import 'package:yt_tut1/answer.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  final List<Map> _questions = const [
    {
      "question": "Wtf is je favo kleur?",
      "answers": [
        {"text": "Rood", "score": 10},
        {"text": "Blauw", "score": 20},
        {"text": "Groen", "score": 30}
      ],
    },
    {
      "question": "Wtf is je favo dier?",
      "answers": [
        {"text": "App", "score": 10},
        {"text": "Panther", "score": 20},
        {"text": "Slang", "score": 30}
      ],
    },
    {
      "question": "Wtf is je favo eten?",
      "answers": [
        {"text": "Pasta", "score": 10},
        {"text": "Pasta", "score": 20},
        {"text": "Pasta", "score": 30}
      ],
    },
    {
      "question": "Wtf is je favo console?",
      "answers": [
        {"text": "Xbox", "score": 10},
        {"text": "PS", "score": 20},
        {"text": "Switch", "score": 30}
      ],
    }
  ];

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _totalScore += score;
        _questionIndex += 1;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My First Application"),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: _questionIndex < _questions.length - 1
              ? Quiz(_questions, _questionIndex, _answerQuestion)
              : Result(_totalScore, _resetQuiz)),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
