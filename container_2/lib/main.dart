import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container'),
        ),
        body: Container(
          color: Colors.cyan[400],
          margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
          padding: EdgeInsets.only(bottom: 20, top: 10),
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[Colors.yellow, Colors.green])),
          ),
        ),
      ),
    );
  }
}
