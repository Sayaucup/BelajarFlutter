import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              buildCard(Icons.add_circle_outline, 'Add Account',Colors.purple),
              buildCard(Icons.add_shopping_cart, 'Add to Cart',Colors.green)
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String text,Color color) {
    return Card(
      elevation: 10,
      child: Row(
        children: <Widget>[
          Container(margin: EdgeInsets.all(5), child: Icon(iconData,color: color),),
          Text(text,style: TextStyle(color: color),)
        ],
      ),
    );
  }
}
