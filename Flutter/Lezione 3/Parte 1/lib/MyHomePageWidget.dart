
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_day_3/MyHomePageController.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MyHomePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  MyHomePage({Key key, this.title, this.parentScaffoldKey}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends StateMVC<MyHomePage> {

  MyHomePageController _con;

  _MyHomePageState() : super(MyHomePageController()) {
    _con = controller;
  }

  @override
  void initState() {
    super.initState();
  }

  void showNativeView() async {

    var methodChannel = const MethodChannel('flutter/nativeVIEW');

    final String result = await methodChannel.invokeMethod('StartNativeView', '{ to_pay: \"123\" }');
    print(result);

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showNativeView,
        tooltip: 'Increment',
        child: Icon(Icons.vibration_sharp),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
