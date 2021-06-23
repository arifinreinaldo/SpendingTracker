import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TransactionForm();
  }
}

class TransactionForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TransactionState();
  }
}

class TransactionState extends State<TransactionForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Add a Transaction"),
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Description"),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a transaction description'),
            ),
            Text("Value"),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a transaction values'),
            ),
            Align(
              child: Text("hoho"),
              alignment: Alignment.bottomCenter,
            )
          ],
        ),
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
