import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/controllers/DashboardController.dart';
import 'package:flutter_app/controllers/PageTwoController.dart';
import 'package:flutter_app/elements/BlockButtonWidget.dart';
import 'package:flutter_app/elements/LoginFormWidget.dart';
import 'package:flutter_app/elements/RegisterFormWidget.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class TabPageTwoWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  TabPageTwoWidget({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _TabPageTwoWidgetState createState() {
    return _TabPageTwoWidgetState();
  }
}

class _TabPageTwoWidgetState extends StateMVC<TabPageTwoWidget> {
  PageTwoController _con;

  _TabPageTwoWidgetState() : super(PageTwoController()) {
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
            S.of(context).link_2,
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
            Form(
              key: _con.loginFormKey,
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _con.unknownUser ? RegisterFormWidget(controller: _con) : LoginFormWidget(controller: _con),
                  SizedBox(height: 10),
                  BlockButtonWidget(color: Colors.greenAccent, text: Text("My Pippo"), onPressed: null),
                  SizedBox(height: 20)
                ],
              ),
            ),

            FlatButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              color: Colors.green,
              onPressed: () async {
                setState(() {
                  _con.unknownUser = !_con.unknownUser;
                });
              },
              child: Text(
                S.of(context).login,

              ),
            ),
          ],
        ),
      ),
    );
  }


  BlockButtonWidget submit(BuildContext context) {
    return BlockButtonWidget(
      key: Key('btn_login'),
      text: Text(
        S.of(context).login,
        semanticsLabel: 'btn_login',
        style: TextStyle(
            color:
            Theme.of(context).primaryColor),
      ),
      color: Theme.of(context).accentColor,
      onPressed: () async {
        setState(() {
          _con.unknownUser =
          !_con.unknownUser;
        });
      },
    );
  }
}
