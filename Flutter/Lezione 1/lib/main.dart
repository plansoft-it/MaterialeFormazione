import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screen/MyHomePage.dart';
import 'package:flutter_app/screen/SplashScreenWidget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_app/setting_repository.dart' as settingRepo;
import 'RouteGenerator.dart';
import 'generated/l10n.dart';
import 'models/settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: settingRepo.setting,
        builder: (context, Setting _setting, _) {
      return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      locale: _setting.mobileLanguage.value,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.black,
        accentColor: Colors.red,
        focusColor: Colors.amberAccent

      ),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
        initialRoute: '/SplashScreen',
      );
        });
  }
}
