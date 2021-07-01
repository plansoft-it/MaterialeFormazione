
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_day_3_2/SecondTabController.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class SecondTabWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  SecondTabWidget({Key key, this.parentScaffoldKey}) : super (key: key);

  @override
  _SecondTabWidgetState createState() {
    return _SecondTabWidgetState();
  }
}

class _SecondTabWidgetState extends StateMVC<SecondTabWidget> {

  SecondTabController _con;

  _SecondTabWidgetState() : super(SecondTabController()) {
    _con = controller;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
        Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("Second Tab Item")
              ],
            ),
          ),
        )
    );
  }
}