import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Row dan column'),),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('PERTAMA1'),
            Text('PERTAMA2'),
            Text('PERTAMA3'),
            Text('  '),
            Column(
              children: <Widget>[
                Text('PERTAMA4'),
                Text('PERTAMA5'),
              ],
            )
          ],
        ),
      ),
      
    );
  }
}