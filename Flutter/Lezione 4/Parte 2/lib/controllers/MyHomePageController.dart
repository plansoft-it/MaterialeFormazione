import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../MyPhotoLibrary.dart';

class MyHomePageController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;
  List<MyPhotoLibrary> myPhotos = [];

  File _image;
  final picker = ImagePicker();

  MyHomePageController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
  }

  void openMobileVideoCamera() async {
    final pickerVideo = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickerVideo != null) {
        _image = File(pickerVideo.path);
        List<int> imageBytes = _image.readAsBytesSync();
        MyPhotoLibrary tmp = new MyPhotoLibrary();
        tmp.image = base64String(imageBytes);
        myPhotos.add(tmp);
        print("Picker is empty");
      } else {
        print("Picker is empty");
      }

    });
  }


  void openMobileCamera() async {
    final pickerCamera = await picker.getImage(source: ImageSource.camera, maxWidth: 1204.0, maxHeight: 768.0, imageQuality: 50);
    setState(() {
      if (pickerCamera != null) {
        _image = File(pickerCamera.path);
        List<int> imageBytes = _image.readAsBytesSync();
        MyPhotoLibrary tmp = new MyPhotoLibrary();
        tmp.image = base64String(imageBytes);
        myPhotos.add(tmp);
        print("Picker is empty");
      } else {
        print("Picker is empty");
      }

    });
  }

  void openMobileGallery() async {
    final pickerGallery = await picker.getImage(source: ImageSource.gallery);

    setState((){
      if (pickerGallery != null) {
        _image = File(pickerGallery.path);
        List<int> imageBytes = _image.readAsBytesSync();

        MyPhotoLibrary tmp = new MyPhotoLibrary();
        tmp.image = base64String(imageBytes);
        myPhotos.add(tmp);

        print("Picker is empty");
      } else {
        print("Picker is empty");
      }

    });

  }

  Uint8List imageFromBase64 (String imageBase64) {
    return base64Decode(imageBase64);
  }


  String base64String(Uint8List data) {
    return base64Encode(data);
  }

}