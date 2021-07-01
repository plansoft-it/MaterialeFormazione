import 'package:flutter/material.dart';
import 'package:flutter_app_day_4_1/MyHomePage.dart';
import 'package:flutter_app_day_4_1/WecomeContent.dart';
import 'package:flutter_app_day_4_1/utils/SizeConfig.dart';

class WelcomeWidget extends StatefulWidget {
  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  int currentIndex = 0;

  List<Map<String, String>> welcomeData = [
    {
      "text" : "Welcome Page 01",
      "image" : "assets/images/splash_1.png"
    },
    {
      "text" : "Welcome Page 02",
      "image" : "assets/images/splash_2.png"
    },
    {
      "text" : "Welcome Page 03",
      "image" : "assets/images/splash_3.png"
    },
    {
      "text" : "Welcome Page 04",
      "image" : "assets/images/splash_1.png"
    }];


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: welcomeData.length,
                  itemBuilder: (context, index) => WelcomeContent(
                      text: welcomeData[index]["text"],
                      image: welcomeData[index]["image"]),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: getProportionalScreenWidth(20)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(welcomeData.length, (index) => myDots(index: index)),
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(65),
                        child: FlatButton(
                          onPressed: () {
                            print("Click su FlatButton");
                          },
                          shape: RoundedRectangleBorder(borderRadius:  BorderRadius.circular(20)),
                          color: Colors.amberAccent,
                          child: Text('CONTINUA', style: TextStyle(color: Colors.black)),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }

  AnimatedContainer myDots({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 10),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.amber : Colors.grey,
          borderRadius: BorderRadius.circular(5)
      ),
    );
  }

}



