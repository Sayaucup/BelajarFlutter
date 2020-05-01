import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text field'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.add_alarm),
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                    icon: Icon(Icons.add_a_photo),
                    prefixIcon: Icon(Icons.add_a_photo),
                    prefixText: 'prefix ',
                    labelText: 'label',
                    hintText: 'hint',
                    hintStyle: TextStyle(fontSize: 15),
                    prefixStyle: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.blue),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                obscureText: true,
                maxLength: 10,
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
