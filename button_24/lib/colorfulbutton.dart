import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/widgets.dart';

class Colorfulbutton extends StatefulWidget {
  Color mainColor, secondColor;
  @override
  _ColorfulbuttonState createState() =>
      _ColorfulbuttonState(mainColor, secondColor);

  Colorfulbutton(this.mainColor, this.secondColor);
}

class _ColorfulbuttonState extends State<Colorfulbutton> {
  bool diPencet = false;
  Color mainColor, secondColor;
  _ColorfulbuttonState(this.mainColor, this.secondColor);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapCancel: () {
          setState(() {
            diPencet = !diPencet;
          });
        },
        onTapUp: (parameters) {
          setState(() {
            diPencet = !diPencet;
          });
        },
        onTapDown: (parameters) {
          setState(() {
            diPencet = !diPencet;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (diPencet) ? 5 : 10,
          shadowColor: (diPencet) ? secondColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: <Widget>[
                SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      color: (diPencet) ? secondColor : mainColor,
                      child: Transform.rotate(
                        angle: pi / -4,
                        child: Icon(
                          Icons.account_box,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
