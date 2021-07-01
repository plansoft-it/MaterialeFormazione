
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_day_2/controller/MyHomePageController.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import 'models/posts.dart';
import 'models/ImagesFeed.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends StateMVC<MyHomePage> {

  MyHomePageController _con;

  _MyHomePageState() : super(MyHomePageController()) {
    _con = controller;
  }

  Future<List<Posts>> posts;
  Future<List<ImagesFeed>> images;

  @override
  void initState() {
    super.initState();
   // _con.fetchDataFromDB();
   // posts = _con.fetchJsonData();
    images = _con.fetchImagesFeed();
 //   _con.getJsonImages();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _con.scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<ImagesFeed>> (
        future: images,
        builder: (context, data) {
          if (data.hasData) {
            return grid(data.data); //list(data.data);
          }
          return CircularProgressIndicator();
        }
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  GridView grid(List<ImagesFeed> data) {
    return GridView.builder(
      itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5
        ),
        itemBuilder: (context, index) {
          ImagesFeed currentItem = data[index];
          return GestureDetector(
              child: CachedNetworkImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.fill,
            imageUrl: currentItem.downloadUrl,
            placeholder: (context, url) => Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            //placeholder: (context, url) => Image.asset('/assets/images/plansoft.png',fit: BoxFit.fitWidth),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ));

        }
    );
  }

  ListView list(List<ImagesFeed> data) {
    return ListView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          ImagesFeed currentItem = data[index];
          return GestureDetector(
            onLongPress: () {
              print("onLongPress tap detected");
            },
            onTap: () {
              print(currentItem.author);
            }, onDoubleTap: () {
            print("Double tap detected");
          },
            child: drawCardImage(currentItem),
          ); drawCard(_con.posts[index]);
        });
  }

  Card drawCardImage(ImagesFeed item) {
    return Card(

      child: Column(
        children: [
         // Text(item.author),
          //Image.network(item.downloadUrl)

          CachedNetworkImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.fitWidth,
            imageUrl: item.downloadUrl,
            placeholder: (context, url) => Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            //placeholder: (context, url) => Image.asset('/assets/images/plansoft.png',fit: BoxFit.fitWidth),
            errorWidget: (context, url, error) => Icon(Icons.error),
          )


        ],
      ),
    );
  }

  /*
  FutureBuilder<List<Posts>> (
        future: posts,
        builder: (context, data) {
          if (data.hasData) {
            return ListView.builder(
                itemCount: data.data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  Posts currentItem = data.data[index];
                  return GestureDetector(
                    onLongPress: () {
                      print("onLongPress tap detected");
                    },
                    onTap: () {
                      print(currentItem.title);
                    }, onDoubleTap: () {
                    print("Double tap detected");
                  },
                    child: drawCard(currentItem),
                  ); drawCard(_con.posts[index]);
                });
          }
          return CircularProgressIndicator();
        }
      )

   */
  /*
  _con.posts.length == 0 ? CircularProgressIndicator() : ListView.builder(
        itemCount: _con.posts.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          Posts currentItem = _con.posts[index];
          return GestureDetector(
            onLongPress: () {
              print("onLongPress tap detected");
            },
            onTap: () {
              print(currentItem.title);
            }, onDoubleTap: () {
            print("Double tap detected");
            },
            child: drawCard(currentItem),
          ); drawCard(_con.posts[index]);
        }),
   */



  Card drawCard(Posts item) {
    return Card(
      child: Column(
        children: [
          Text(item.id.toString()),
          Text(item.userId.toString()),
          Text(item.title)
        ],
      ),
    );
  }
  
}
