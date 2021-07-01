import 'package:flutter/material.dart';
import 'package:flutter_app_day_3_2/GenericController.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import 'MyHomePageWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends AppMVC {

  MyApp({Key key}) : super(con: GenericController(), key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
