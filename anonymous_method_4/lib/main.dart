import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = 'ini adalah text';

  void tomboltekan() {
    setState(() {
      message = 'udah di tekan';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anonymus method'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(message),
              RaisedButton(
                child: Text('Tekan'),
                // onPressed: tomboltekan,
                onPressed: (){
                  setState(() {
                    message = 'udah di tekann';
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
