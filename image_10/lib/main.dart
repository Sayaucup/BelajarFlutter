import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image'),
        ),
        body: Center(
          //gambar dari asset
          child: Image(
            image: AssetImage('gambar/ss.png'),
          ),
          // gambar dari internet
          // child: Image(
          //   image: NetworkImage(
          //       'https://flutter.dev/images/flutter-logo-sharing.png'),fit: BoxFit.contain,repeat: ImageRepeat.repeat,
          // ),
        ),
      ),
    );
  }
}
