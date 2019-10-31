/*

  goals:
    1) have a appbar, a text and a button widgets
    2) make 3 custom widgets: App, TextControl and Text
    3) every time the button is pressed, the text changes

*/

import 'package:flutter/material.dart';

import './texto.dart';
import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /*Frases brasileiras famosas dos anos 80*/
  var _textIndex = 0;
  final _text = ["Eu prefiro melão", "Você é o Jô Soares?"];

  void _textChange(){
    /*Se _textIndex for menor que o numero de elementos menos 1 
      de _text ele incrementa. Senão, _textIndex volta para 0
    */
    _textIndex < _text.length-1 ? setState(()=>_textIndex+=1) : setState(()=>_textIndex=0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("EAE"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Texto(_text[_textIndex]),
              TextControl(_textChange)
            ],
          ),
        ),
      ),
    );
  }
}
