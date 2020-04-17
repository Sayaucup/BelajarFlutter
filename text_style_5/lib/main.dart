import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Style'),
        ),
        body: Center(
          child: Text(
            'text',
            style: TextStyle(
                fontFamily: 'nunito',
                fontSize: 30,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.black,
                decorationThickness: 2,
                decorationStyle: TextDecorationStyle.solid),
          ),
        ),
      ),
    );
  }
}
