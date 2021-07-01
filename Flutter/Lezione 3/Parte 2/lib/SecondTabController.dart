
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class SecondTabController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;

  SecondTabController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }


}