
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_day_3_2/FirstTabWidget.dart';
import 'package:flutter_app_day_3_2/MyHomePageController.dart';
import 'package:flutter_app_day_3_2/SecondTabWidget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MyHomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  MyHomePage({Key key, this.title, this.parentScaffoldKey}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends StateMVC<MyHomePage> {

  MyHomePageController _con;
  _MyHomePageState() : super(MyHomePageController()) {
    _con = controller;
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            backgroundColor: Colors.indigoAccent,
            centerTitle: true,
            bottom: TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: 'First Tab',
                  icon: Icon(Icons.access_alarm_rounded, color: Colors.white),
                ),
                Tab(
                  text: 'Second Tab',
                  icon: Icon(Icons.account_circle_sharp, color: Colors.white),
                ),
                Tab(
                  text: 'Second Tab',
                  icon: Icon(Icons.account_circle_sharp, color: Colors.white),
                )
              ],
            ),
          ),
          body: Container(
                child: new TabBarView(children: <Widget> [
                  FirstTabWidget(),
                  SecondTabWidget(),
                  FirstTabWidget(),
                ]),
          )
        )
    );
  }
}
