import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter'),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                height: 120,
                width: 200,
                child: Text(
                  'Sayaucup adalah nama panggilan saya adalah ucup jadinya sayaucup',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontStyle: FontStyle.italic  ,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70),
                ))),
      ),
    );
  }
}
