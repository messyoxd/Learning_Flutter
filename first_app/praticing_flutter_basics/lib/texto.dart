import 'package:flutter/material.dart';
class Texto extends StatelessWidget {
  String texto;

  Texto(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        texto,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}