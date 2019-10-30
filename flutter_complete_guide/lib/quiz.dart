import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final Function answerFunction;
  final int questionsIndex;
  final List<String> questions;

  Quiz(
      {@required this.questions,
      @required this.questionsIndex,
      @required this.answerFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(questions[questionsIndex]),
        ...(_answers[questionsIndex] as List<String>).map((answer) {
          return Answer(answerFunction, answer);
        }).toList(),
      ],
    ));
  }
}
