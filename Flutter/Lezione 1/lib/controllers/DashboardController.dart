import 'package:flutter/material.dart';
import 'package:flutter_app/models/RouteArgument.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:native_progress_hud/native_progress_hud.dart';

class DashboardController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;

  DashboardController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  void btnClick() {

    NativeProgressHud.showWaiting(backgroundColor: "#000000", textColor: "#000000");


  }


}
