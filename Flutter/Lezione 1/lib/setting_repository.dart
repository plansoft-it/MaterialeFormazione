

import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'models/settings.dart';

ValueNotifier<Setting> setting = new ValueNotifier(new Setting());

Future<Setting> initSettings() async {
  Setting _setting = new Setting();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String locale = await Devicelocale.currentLocale;
  print("LANGUAGE");
  print("--------------------");
  print(locale.substring(0,2));
  print("--------------------");

  String preferredLang = (prefs.getString('mobileLanguage') ?? locale.substring(0,2));

  _setting.mobileLanguage = new ValueNotifier(Locale(preferredLang, ''));

  setDefaultLanguage(preferredLang);
  setting.value = _setting;
  setting.notifyListeners();
  return setting.value;
}


Future<void> setDefaultLanguage(String language) async {
  if (language != null) {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language', language);
  }
}

Future<String> getDefaultLanguage(String defaultLanguage) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.containsKey('language')) {
    defaultLanguage = await prefs.get('language');
  }
  return defaultLanguage;
}
