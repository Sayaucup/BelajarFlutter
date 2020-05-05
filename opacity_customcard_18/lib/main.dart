import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Costum card',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff8c062f),
      ),
      body: Stack(
        children: <Widget>[
          // Container(
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //           colors: [Color(0xfffe5788), Color(0xfff5605d)],
          //           begin: Alignment.topCenter,
          //           end: Alignment.bottomCenter)),
          // ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.65,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Beutiful Sunset at Paddy Field',
                              // maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xfff56d5d), fontSize: 25),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    'Posted on  ',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 12),
                                  ),
                                  Text(
                                    'June 20, 2020',
                                    style: TextStyle(
                                        color: Color(0xfff56d5d), fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Spacer(flex: 10),
                                Icon(
                                  Icons.thumb_up,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Spacer(flex: 1),
                                Text(
                                  '99',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(
                                  flex: 5,
                                ),
                                Icon(
                                  Icons.comment,
                                  size: 18,
                                  color: Colors.grey,
                                ),
                                Spacer(
                                  flex: 1,
                                ),
                                Text(
                                  '10',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(
                                  flex: 10,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
