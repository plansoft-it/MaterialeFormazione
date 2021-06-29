import 'package:flutter/material.dart';
import 'package:flutter_app/screen/DashboardWidget.dart';
import 'package:flutter_app/screen/TabPageTwoWidget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MyHomePageController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;

  MyHomePageController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  int counter = 0;
  int currentTab = 0;
  Widget currentPage = DashboardWidget();

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void selectTab(int tabItem) {
    setState(() {
      currentTab = tabItem;
      switch (tabItem) {
        case 0:
          currentPage = DashboardWidget();
          break;
        case 1:
          currentPage = TabPageTwoWidget();
          break;
      }
    });
  }

}
