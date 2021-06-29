import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/elements/BlockButtonWidget.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/models/RouteArgument.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends StateMVC<DrawerWidget> {

  @override
  Widget build(BuildContext context) {
    return Semantics(
        child: Drawer(
          key: Key('menu_hamburger'),
          semanticLabel: 'menu_hamburger',
          child: ListView(children: <Widget>[
            Container(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  color: Color(0xffffffff),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/plansoft.png',
                        height: 200,
                        fit: BoxFit.fitHeight,
                      ),
                      ListTile(
                        key: Key('welcomePage_drawer_help'),
                        leading:
                        Icon(Icons.home, color: Colors.black),
                        title: Text('Home Page',
                            semanticsLabel: 'drawer_help',
                            style: TextStyle(color: Colors.black)),
                        onTap: () {
                          Navigator.of(context).pushNamed('/Help');
                        },
                      ),

                      ListTile(
                        key: Key('setting_language_item'),
                        leading:
                        Icon(Icons.language, color: Colors.black),
                        title: Text(S.of(context).setting_language,
                            semanticsLabel: 'setting_language_item',
                            style: TextStyle(color: Colors.black)),
                        onTap: () {
                          Navigator.of(context).pushNamed('/Language',
                              arguments:
                              RouteArgument(id: 'setup_language',
                                  heroTag: 'setup_language',
                                  param: null,
                                  function: null));
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BlockButtonWidget(color: Colors.greenAccent, text: Text("My Pippo"), onPressed: null),
          ]),
        ),
        label: 'menu_hamburger');
  }
}