import 'package:flutter/material.dart';
import 'package:flutter_app/models/UserAccount.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class PageTwoController extends ControllerMVC {
  GlobalKey<ScaffoldState> scaffoldKey;
  GlobalKey<FormState> loginFormKey;

  UserAccount userAccount;
  bool hidePassword = true;

  bool unknownUser = true;


  PageTwoController() {
    this.scaffoldKey = new GlobalKey<ScaffoldState>();
    loginFormKey = new GlobalKey<FormState>();
  }

  Future<bool> login() async {
    if (loginFormKey.currentState.validate()) {
      print(userAccount.emailAddress);

      var xxxx = userAccount.toJson();
    }
  }


  bool isValidEmail(String email) {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

}
