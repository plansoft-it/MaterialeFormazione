import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/controllers/DashboardController.dart';
import 'package:flutter_app/controllers/DashboardDetailController.dart';
import 'package:flutter_app/elements/BlockButtonWidget.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/models/RouteArgument.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class DashboardDetailWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;
  RouteArgument routeArgument;

  DashboardDetailWidget({Key key, this.parentScaffoldKey, this.routeArgument}) : super(key: key);

  @override
  _DashboardDetailWidgetState createState() {
    return _DashboardDetailWidgetState();
  }
}

class _DashboardDetailWidgetState extends StateMVC<DashboardDetailWidget> {
  DashboardDetailController _con;


  _DashboardDetailWidgetState() : super(DashboardDetailController()) {
    _con = controller;

  }

  @override
  void initState() {
    super.initState();
    _con.myParam = widget.routeArgument.param.toString();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _con.scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: true,
          backgroundColor: Colors.greenAccent,
          brightness: Brightness.light,
          elevation: 0,
          centerTitle: true,
          title: Text(
            _con.myParam ,
              style: Theme.of(context).textTheme.title.merge(TextStyle(letterSpacing: 1.3)),
          )
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  color: Colors.amber,
                  child:  Text('My Test'),
                ),
                SizedBox(width: 50),
                Text('My Test'),
                SizedBox(width: 50),
                Text('My Test'),
              ],
            ),
            BlockButtonWidget(color: Colors.indigoAccent, text: Text(S.of(context).dashboard), onPressed: null),
            SizedBox(height: 10),
            FlatButton(
              key: Key('dashboard_click_me'),
              onPressed: () async {

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
            SizedBox(height: 10),
            Image.asset(
              'assets/images/plansoft.png',
              height: 200,
              fit: BoxFit.fitHeight,
            ),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test')
            ,Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
            Text('My Test'),
          ],
        ),
      ),
    );
  }
}
