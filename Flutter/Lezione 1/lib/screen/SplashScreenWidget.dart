import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/controllers/DashboardController.dart';
import 'package:flutter_app/controllers/PageTwoController.dart';
import 'package:flutter_app/controllers/SplashScreenController.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:flutter_app/setting_repository.dart' as settingRepo;

class SplashScreenWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  static String routeName = "/splash";
  SplashScreenWidget({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _SplashScreenWidgetState createState() {
    return _SplashScreenWidgetState();
  }
}

class _SplashScreenWidgetState extends StateMVC<SplashScreenWidget> {
  SplashScreenController _con;

  _SplashScreenWidgetState() : super(SplashScreenController()) {
    _con = controller;
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() {

        Navigator.of(context).pushReplacementNamed('/Pages', arguments: 0);

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      key: _con.scaffoldKey,
      body: Stack(
        children: <Widget>[
          Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/plansoft.png',
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 50),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Theme.of(context).hintColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


}
