import 'package:flutter/material.dart';
import 'package:flutter_app_day_4_1/utils/SizeConfig.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({Key key, this.text, this.image}) : super (key: key);
  final String text, image;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 10),
        Text('MY WELCOME PAGE',
        style: TextStyle(
          fontSize: getProportionalScreenWidth(24),
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold
        )),
        Spacer(flex: 5),
        Text(text, textAlign: TextAlign.center),
        Spacer(flex: 5),
        Image.asset(
          image,
          height: getProportionateScreenHeight(256),
          width: getProportionalScreenWidth(230),
        ),
        Spacer(flex: 1),
      ],
    );
  }
}