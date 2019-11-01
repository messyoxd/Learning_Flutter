import 'package:flutter/material.dart';
import './transactions/model.dart';
import './transactions/widgets/transactionCards.dart';
import './transactions/widgets/add_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Gastos", home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    Transaction(id: "1", title: "Amendoins", cost: 5, date: DateTime.now()),
    Transaction(
        id: "2",
        title: "Recarga da carteirinha",
        cost: 10,
        date: DateTime.now()),
  ];

  final titleController = TextEditingController();
  final costController = TextEditingController();

  void addTransactions(double cost, String title) {
    setState(() {
      transactions.add(Transaction(
          id: (transactions.length + 1).toString(),
          title: title,
          cost: cost,
          date: DateTime.now()));
    });
  }

  void startAddTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            child: AddTransaction(addTransactions),
            onTap: () {},
            behavior: HitTestBehavior.opaque,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gastos"),
        actions: <Widget>[
          IconButton(
            onPressed: () => startAddTransaction(context),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            /*Card principal*/
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Center(
                  child: Text("Graficos"),
                ),
              ),
            ),
            /*Lista de gastos*/
            TransactionCards(transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startAddTransaction(context),
      ),
    );
  }
}
