import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_day_2/db/dbObject.dart';
import 'package:flutter_app_day_2/models/ImagesFeed.dart';
import 'package:flutter_app_day_2/models/posts.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:http/http.dart' as http;
import 'package:connectivity/connectivity.dart';

class MyHomePageController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;
  List<Posts> posts = [];
  Connectivity connectivity = Connectivity();
  ConnectivityResult connectivityResult = ConnectivityResult.none;
  StreamSubscription<ConnectivityResult> connectivityResultSubcription;

  MyHomePageController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
    initConnectivity();
    connectivityResultSubcription = connectivity.onConnectivityChanged.listen(connectivityStatusUpdate);
  }

  Future<void> connectivityStatusUpdate(ConnectivityResult result) async {
    switch(result) {
      case ConnectivityResult.wifi:
        scaffoldKey?.currentState?.showSnackBar(SnackBar(
            content: SizedBox(
              height: 60,
              child: Container(
                  child: Center(
                      child: Text('Connesso tramite WIFI',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center
                      )), height: 1.0),
            ), duration: Duration(seconds: 10),
            backgroundColor: Colors.green));
        break;
      case ConnectivityResult.mobile:
        scaffoldKey?.currentState?.showSnackBar(SnackBar(
            content: SizedBox(
              height: 60,
              child: Container(
                  child: Center(
                      child: Text('Connesso tramite MOBILE DATA',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center
                      )), height: 1.0),
            ), duration: Duration(seconds: 10),
            backgroundColor: Colors.green));
        break;
      case ConnectivityResult.none:
        scaffoldKey?.currentState?.showSnackBar(SnackBar(
            content: SizedBox(
              height: 60,
              child: Container(
                  child: Center(
                      child: Text('Verifica la tua connessione dati',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center
                      )), height: 1.0),
            ), duration: Duration(seconds: 10),
            backgroundColor: Colors.red));
        break;
    }
  }

  Future<void> initConnectivity() async {
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    try {
      connectivityResult = await connectivity.checkConnectivity();
      print(connectivityResult);
    } catch (ex) {
      print(ex.toString());
    }
  }

  Future<List<ImagesFeed>> fetchImagesFeed() async {
    connectivityResult = await connectivity.checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile) {
      throw Exception("Connection Mobile");
    } else if (connectivityResult == ConnectivityResult.wifi) {
      var response = await http.get("https://picsum.photos/v2/list");
      if (response.statusCode == 200) {
        return imagesFeedFromJson(response.body);
      } else {
        throw Exception("No image Feed");
      }
    } else {
      //throw Exception("No connection");
      final snackbar = SnackBar(
          content: SizedBox(
            height: 60,
            child: Container(
              child: Center(
                child: Text('Verifica la tua connessione dati',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center
                )), height: 1.0),
          ), duration: Duration(seconds: 10),
        backgroundColor: Colors.red);
      scaffoldKey?.currentState?.showSnackBar(snackbar);

    }

  }

  Future<List<Posts>> fetchJsonData() async {
    var response = await http.get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      return postsFromJson(response.body);
    } else {
      throw Exception("Fail ...");
    }
  }

  void fetchDataFromDB() async {

    List<Json_from_uri> dbResult = await Json_from_uri()
        .select()
        .width
        .greaterThan(5700)
        .and
        .height
        .greaterThan(10)
        .toList();


    Json_from_uri item = dbResult.first;
    item.delete();


    print("RESULT");

  }

  void getJsonImages() async {
    var response = await http.get('https://picsum.photos/v2/list');
    List<ImagesFeed> images = imagesFeedFromJson(response.body);

    List<Json_from_uri> dbData = [];

    images.forEach((element) {
      dbData.add(new Json_from_uri(
        author: element.author,
        width: element.width,
        height: element.height,
        url: element.url,
        download_url: element.downloadUrl
      ));
    });

    var result = await Json_from_uri.saveAll(dbData);



    setState(() { });
  }

  void getJsonData() async {
    var response = await http.get('https://jsonplaceholder.typicode.com/posts');
    posts = postsFromJson(response.body);


    setState(() { });
  }

}
