
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MyHomePageController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;

  MyHomePageController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }
}