import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetQuiz;

  const Result(this.finalScore, this.resetQuiz, {Key? key}) : super(key: key);

  String get resultPhrase {
    var resultText = "You did it! You got " + finalScore.toString();
    if (finalScore <= 30) {
      resultText = "What de hell. You got" + finalScore.toString();
    } else if (finalScore <= 60) {
      resultText = "Lol";
    } else if (finalScore <= 90) {
      resultText = "Aha. You got " + finalScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
      Text(
        resultPhrase,
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
          TextButton(onPressed: resetQuiz, child: Text("Restart Quiz!"))
    ]));
  }
}
