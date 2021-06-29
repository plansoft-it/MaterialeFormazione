import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class LanguageController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;


  LanguageController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }


}
