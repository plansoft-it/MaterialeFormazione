import 'package:flutter/material.dart';
import 'package:flutter_app_day_4_1/WelcomeWidget.dart';

import 'MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "my Home",),
    );
  }
}
