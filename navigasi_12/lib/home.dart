import 'package:flutter/material.dart';
import 'package:navigasi_12/second.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Go to second page'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Second();
            }));
          },
        ),
      ),
    );
  }
}
