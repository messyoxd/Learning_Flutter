import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  final Function add_handler;
  AddTransaction(this.add_handler);

  @override
  _AddTransactionState createState() => _AddTransactionState(add_handler);
}

class _AddTransactionState extends State<AddTransaction> {
  final titleController = TextEditingController();
  final costController = TextEditingController();
  final Function add_handler;

  _AddTransactionState(this.add_handler);

  void adicionarTransacao() {
    final custo = double.parse(costController.text);
    final titulo = titleController.text;

    if (titulo.isEmpty || custo <= 0) {
      return;
    }

    add_handler(custo, titulo);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Titulo'),
                  controller: titleController,
                  onSubmitted: /*parametros não serão usados*/ (_) =>
                      adicionarTransacao(),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Custo'),
                  controller: costController,
                  onSubmitted: /*parametros não serão usados*/ (_) =>
                      adicionarTransacao(),
                  keyboardType: TextInputType.number,
                ),
                FlatButton(
                  child: Text("Adicionar"),
                  textColor: Colors.purple,
                  onPressed: adicionarTransacao,
                )
              ],
            )));
  }
}
