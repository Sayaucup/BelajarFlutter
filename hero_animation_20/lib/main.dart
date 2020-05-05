import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text(
          'Hero animation',
        ),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Center(
              child: Hero(
                tag: 'pp',
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
            Text(
              'Yusuf',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
