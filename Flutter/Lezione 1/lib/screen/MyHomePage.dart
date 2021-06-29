
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/controllers/MyHomePageController.dart';
import 'package:flutter_app/drawer/DrawerWidget.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/screen/TabPageTwoWidget.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import 'DashboardWidget.dart';

// ignore: must_be_immutable
class PagesTestWidget extends StatefulWidget {
  int currentTab;
  Widget currentPage = DashboardWidget();
  final GlobalKey<ScaffoldState> scaffoldKeyTabBar = new GlobalKey<ScaffoldState>();

  PagesTestWidget({ Key key, this.currentTab}) {
    currentTab = currentTab != null ? currentTab : 0;
  }

  @override
  _PagesTestWidgetState createState() {
    return _PagesTestWidgetState();
  }
}

class _PagesTestWidgetState extends StateMVC<PagesTestWidget> with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  AppLifecycleState _notification;
  MyHomePageController _con;

  _PagesTestWidgetState() : super(MyHomePageController()) {
    _con = controller;
  }

  initState() {
    super.initState();
    _selectTab(widget.currentTab);

  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }


  void moveToTab(int tabindex) {
    setState(() {
      _selectTab(tabindex);
    });
  }



  @override
  void didUpdateWidget(PagesTestWidget oldWidget) {
    _selectTab(oldWidget.currentTab);
    super.didUpdateWidget(oldWidget);
  }

  void _selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          widget.currentPage = DashboardWidget(parentScaffoldKey: widget.scaffoldKeyTabBar);
          break;
        case 1:
          widget.currentPage = TabPageTwoWidget(parentScaffoldKey: widget.scaffoldKeyTabBar);
          break;
      //case 2:
      //  widget.currentPage = ProfileWidget(callback: moveToTab, parentScaffoldKey: widget.scaffoldKeyTabBar);
      //  break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: widget.scaffoldKeyTabBar,
        body: widget.currentPage,
        drawer: DrawerWidget(),
        bottomNavigationBar: BottomNavigationBar(
          key: Key('BottomNavigationBar'),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).accentColor,
          iconSize: 32,
          elevation: 0,
          backgroundColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 32),
          unselectedItemColor: Colors.grey,
          currentIndex: widget.currentTab,
          onTap: (int i) {
            this._selectTab(i);
          },
          // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: Semantics(child: Icon(Icons.house), label: 'navigationBar_wallet', container: true),
              title: new Text(S.of(context).dashboard, semanticsLabel: 'navigationBar_wallet', key: Key('navigationBar_wallet')),
            ),
            BottomNavigationBarItem(
              icon: Semantics(child: Icon(Icons.mobile_friendly), label: 'navigationBar_ticket', container: true),
              title: new Text('TAB2', semanticsLabel: 'navigationBar_ticket', key: Key('navigationBar_ticket')),
            ),

            /*BottomNavigationBarItem(
              icon: Semantics(child: Icon(TickyCustomIcons.user), label: 'navigationBar_profile', container: true),
              title: new Text(S.of(context).profile, semanticsLabel: 'navigationBar_profile', key: Key('navigationBar_profile')),
            ),*/
          ],
        ),
      ),
    );
  }



}