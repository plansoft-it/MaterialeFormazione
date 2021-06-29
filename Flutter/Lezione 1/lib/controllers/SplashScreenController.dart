import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:flutter_app/setting_repository.dart' as settingRepo;

class SplashScreenController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;
  ValueNotifier<Map<String, double>> progress = new ValueNotifier(new Map());

  SplashScreenController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
   // progress.value = { "Setting": 0 };
  }

  @override
  void initState() {
    super.initState();


  }

}
