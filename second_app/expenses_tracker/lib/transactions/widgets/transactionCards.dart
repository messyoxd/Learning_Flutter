import 'package:flutter/material.dart';
import '../model.dart';
import './cards.dart';

class TransactionCards extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionCards(@required this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Cards(
                title: transactions[index].title,
                cost: transactions[index].cost,
                date: transactions[index].date);
        },
        itemCount: transactions.length,
      ),
    );
  }
}
