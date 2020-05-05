import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF6DA7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 35,
                      color: Colors.white),
                ),
              ),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xfff3e9ee)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        style: TextStyle(color: Colors.blueGrey),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891))),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Color(0xffff4891))),
                      ),
                      TextField(
                        style: TextStyle(color: Colors.blueGrey),
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffff4891))),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Color(0xffff4891))),
                      ),
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        child: Text(
                          'FORGET PASSWORD ?',
                          style:
                              TextStyle(color: Color(0xffff4891), fontSize: 12),
                        ))),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.47,
                        height: 45,
                        child: Container(
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              splashColor: Colors.amber,
                              onTap: () {},
                              child: Center(
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFB226B2),
                                    Color(0xFFFF4891)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        mini: true,
                        onPressed: () {},
                        child: Image(
                          image: AssetImage('images/facebookk.png'),
                        ),
                      ),
                      FloatingActionButton(
                        elevation: 0,
                        mini: true,
                        onPressed: () {},
                        child: Image(
                          image: AssetImage('images/google.png'),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'DONT HAVE AN ACCOUNT ?  ',
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFFFF4891),
                          fontWeight: FontWeight.w700),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
