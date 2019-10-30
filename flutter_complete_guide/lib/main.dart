import 'package:flutter/material.dart';
import './question.dart';
//void main(){
//  runApp(MyApp());
//}

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

  var _questions = [
    'Dentre as opções qual sua cor favorita?',
    'Dentre as opções qual seu animal favorito?',
  ];

  void _questionAnswer() {
    if (_questionIndex == _questions.length - 1) {
      setState(() => _questionIndex = 0);
    } else {
      setState(() => _questionIndex = _questionIndex + 1);
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Primeiro App'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _questionAnswer,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _questionAnswer,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _questionAnswer,
            ),
          ],
        ),
      ),
    );
  }
}
