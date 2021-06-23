import 'package:flutter/material.dart';
import 'package:spending_traacker/transaction/transaction.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
        ),
        title: Text("Spending Tracker"),
        actions: <Widget>[
          IconButton(
              icon: Icon(
            Icons.search,
          ))
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text("Cash Flow"),
            margin: EdgeInsets.all(10),
          ),
          Column()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.monetization_on),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransactionPage();
          }));
        },
      ),
    );
  }
}
