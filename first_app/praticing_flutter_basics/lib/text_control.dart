import 'package:flutter/material.dart';
class TextControl extends StatelessWidget {
  final Function changeText;

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: changeText,
        textColor: Colors.white,
        color: Colors.blue,
        child: Text("MUDA"),
      ),
    );
  }
}