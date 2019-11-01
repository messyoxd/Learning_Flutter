import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Cards extends StatelessWidget {
  final String title;
  final double cost;
  final DateTime date;

  Cards({@required this.title, @required this.cost, @required this.date});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        /*Mostrar o custo*/
        Container(
          width: 100,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.purple, width: 2, style: BorderStyle.solid)),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Text(
            "R\$${cost.toStringAsFixed(2)}",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.purple),
          ),
        ),
        /*Mostrar o titulo e a data da transação*/
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            Text(DateFormat.yMd().add_jm().format(date),
                style: TextStyle(color: Colors.grey, fontSize: 12)),
          ],
        )
      ],
    ));
  }
}
