
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_day_3_2/FirstTabController.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class FirstTabWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  FirstTabWidget({Key key, this.parentScaffoldKey}) : super (key: key);

  @override
  _FirstTabWidgetState createState() {
    return _FirstTabWidgetState();
  }
}

class _FirstTabWidgetState extends StateMVC<FirstTabWidget> {

  FirstTabController _con;

  _FirstTabWidgetState() : super(FirstTabController()) {
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
            Text("First Tab Item")
          ],
        ),
      ),
    )
    );
  }
}