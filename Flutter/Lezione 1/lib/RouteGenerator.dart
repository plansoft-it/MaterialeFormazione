
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/DashboardDetailWidget.dart';
import 'package:flutter_app/screen/LanguageWidget.dart';
import 'package:flutter_app/screen/MyHomePage.dart';
import 'package:flutter_app/screen/SplashScreenWidget.dart';

import 'models/RouteArgument.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {

    case '/Pages':
        return MaterialPageRoute(builder: (_) => PagesTestWidget());
      case '/SplashScreen':
        return MaterialPageRoute(builder: (_) => SplashScreenWidget());
      case '/Language':
        return MaterialPageRoute(builder: (_) => LanguageWidget());
      case '/DashboardDetail':
        return MaterialPageRoute(builder: (_) => DashboardDetailWidget(routeArgument: args as RouteArgument));
    }
  }



  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}