import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  TabBar Mytab = TabBar(
    indicator: BoxDecoration(border: Border(top: BorderSide(color: Colors.white,width: 3))),
    tabs: <Widget>[
      Tab(
        icon: Icon(Icons.home),
        text: 'Home',
      ),
      Tab(
        icon: Icon(Icons.settings_applications),
      ),
      Tab(
        text: 'Account',
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBar'),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(Mytab.preferredSize.height),
                child: Container(child: Mytab, color: Colors.green)),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text('Home'),
              ),
              Center(
                child: Text('Setting'),
              ),
              Center(
                child: Text('Account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
