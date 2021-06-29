import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/controllers/DashboardController.dart';
import 'package:flutter_app/elements/BlockButtonWidget.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/screen/SplashScreenWidget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class DashboardWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  DashboardWidget({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _DashboardWidgetState createState() {
    return _DashboardWidgetState();
  }
}

class _DashboardWidgetState extends StateMVC<DashboardWidget> {
  DashboardController _con;

  _DashboardWidgetState() : super(DashboardController()) {
    _con = controller;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _con.scaffoldKey,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: new IconButton(
            icon: new Icon(Icons.reorder, color: Theme.of(context).hintColor),
            onPressed: () => widget.parentScaffoldKey.currentState.openDrawer(),
          ),
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          centerTitle: true,
          title: Text(
              S.of(context).dashboard.toUpperCase(),
              style: Theme.of(context).textTheme.title.merge(TextStyle(letterSpacing: 1.3)),
          )
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[

            BlockButtonWidget(color: Colors.indigoAccent, text: Text(S.of(context).dashboard), onPressed: null),

            SizedBox(height: 10),

            FlatButton(
              key: Key('dashboard_click_me'),
              onPressed: () async {
                _con.btnClick();
               // Navigator.pushNamed(context, SplashScreenWidget.routeName);
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Theme.of(context).accentColor),
                child: Text(
                  S.of(context).dashboard_button.toUpperCase(),
                  semanticsLabel: 'dashboard_click_me',
                  style: Theme.of(context).textTheme.title.merge(TextStyle(letterSpacing: 2.6, color: Colors.white)),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }


}
