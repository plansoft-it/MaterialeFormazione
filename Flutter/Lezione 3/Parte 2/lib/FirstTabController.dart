
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class FirstTabController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;

  FirstTabController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }
}