import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media query'),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              children: children(),
            )
          : Row(
              children: children(),
            )

      // body: Container(
      //   color: Colors.grey,
      //   width: MediaQuery.of(context).size.width / 3,
      //   height: MediaQuery.of(context).size.height / 2,
      // ),
    );
  }

  // penulisan if else
  // (syarat) ? kalau bener : kalau salah

  List<Widget> children() {
    return <Widget>[
      Container(
        color: Colors.redAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blueAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.greenAccent,
        width: 100,
        height: 100,
      ),
    ];
  }
}
