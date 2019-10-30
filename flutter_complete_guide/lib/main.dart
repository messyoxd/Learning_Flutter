import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = [
    'Dentre as opções qual sua cor favorita?',
    'Dentre as opções qual seu animal favorito?',
  ];

  final _answers = [
    ['vermelho', 'amarelo', 'azul', 'roxo'],
    ['cão', 'gato', 'passaro', 'elefante']
  ];

  void _questionAnswer() {
    setState(() => _questionIndex = _questionIndex + 1);
  }

  void _resetQuestionIndex() {
    setState(() => _questionIndex = 0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionsIndex: _questionIndex,
              answerFunction: _questionAnswer)
          : Result(_resetQuestionIndex),
    ));
  }
}
