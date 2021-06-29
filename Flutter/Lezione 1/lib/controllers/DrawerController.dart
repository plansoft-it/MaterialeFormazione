import 'package:flutter/material.dart';
import 'package:flutter_app/models/RouteArgument.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class DrawerController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;

  DrawerController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }


  void languageClick() {

    Navigator.of(context).pushNamed('/Language',
        arguments:
        RouteArgument(id: 'setup_language',
            heroTag: 'setup_language',
            param: null,
            function: null));
  }

}
