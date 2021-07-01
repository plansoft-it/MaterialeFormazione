
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_day_4_2/controllers/MyHomePageController.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _con.scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _con.myPhotos.isEmpty ? Container() : 
        GridView.extent(
            maxCrossAxisExtent: 230,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          padding: EdgeInsets.all(5.0),
          children: _imagesFromDevice(),
        ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueAccent,
        notchMargin: 4.0,
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(Icons.image, color: Colors.white),
                onPressed: () {
                  _con.openMobileGallery();
                }
            ),
            IconButton(
                icon: Icon(Icons.video_call, color: Colors.white),
                onPressed: () {
                  _con.openMobileVideoCamera();
                }),
            IconButton(
              icon: Icon(Icons.linked_camera, color: Colors.white),
              onPressed: () {
                _con.openMobileCamera();
              },
            )
          ],
        ),
      ),
    );
  }
  
  List<Widget> _imagesFromDevice() {
    List<Container> widgets = [];
    _con.myPhotos.forEach((element) { 
      widgets.add(
        new Container(
          child: new Image.memory(_con.imageFromBase64(element.image), fit: BoxFit.cover),
        )
      );
    });

    widgets.add(
        new Container(
          child: new CircularProgressIndicator()),
    );

    widgets.add(
      new Container(
          child: new Text('CIAO')),
    );

    return widgets;
  }
  
}
