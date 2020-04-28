import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color red = Colors.red;
  Color yelow = Colors.yellow;
  Color grey = Colors.grey;
  Color green = Colors.green;
  Color targetColor;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Draggable'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Draggable<Color>(
                    data : red,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: red,
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: red.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: red.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data : yelow,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: yelow,
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: yelow.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: yelow.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                  ),
                  Draggable<Color>(
                    data : green,
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: green,
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                    childWhenDragging: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: green.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                    feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: green.withOpacity(0.7),
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) {isAccepted = true; targetColor = value;},
                builder: (context,candidates, rejected) {
                  return (isAccepted) ? SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: targetColor,
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    ) : SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: grey,
                        shape: StadiumBorder(),
                        elevation: 10,
                      ),
                    );
                },
              )
            ],
          )),
    );
  }
}
