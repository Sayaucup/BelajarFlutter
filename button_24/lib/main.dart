import 'package:flutter/material.dart';
import 'colorfulbutton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button,'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[Colorfulbutton(Colors.yellow, Colors.blue)],
          ),
        ),
      ),
    );
  }
}
