import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka1 = 1;
  int angka2 = 2;
  int angka3 = 3;

  void tambah() {
    setState(() {
      angka1 = angka1 + 1;
      angka2 = angka2 + 2;
      angka3 = angka3 + 3;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                angka1.toString(),
                style: TextStyle(fontSize: 20),
              ),
              Text(
                angka2.toString(),
                style: TextStyle(fontSize: 20),
              ),
              Text(
                angka3.toString(),
                style: TextStyle(fontSize: 20),
              ),
              RaisedButton(
                onPressed: tambah,
                child: Text('Tambah bilangan'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
