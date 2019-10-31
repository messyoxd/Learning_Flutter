import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function funcao;

  Result(this.funcao);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 200,
            height: 200,
            padding: EdgeInsets.all(10.0),
            child: Column(children: [
              Text('Boa'),
              RaisedButton(
                  child: Text('Tentar denovo?'),
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: funcao),
            ])));
  }
}
