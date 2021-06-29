// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Applicazione 1 en`
  String get app_name {
    return Intl.message(
      'Applicazione 1 en',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Home Page`
  String get drawer_link_01 {
    return Intl.message(
      'Home Page',
      name: 'drawer_link_01',
      desc: '',
      args: [],
    );
  }

  /// `TEST`
  String get link_2 {
    return Intl.message(
      'TEST',
      name: 'link_2',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message(
      'Dashboard',
      name: 'dashboard',
      desc: '',
      args: [],
    );
  }

  /// `CLICK ME`
  String get dashboard_button {
    return Intl.message(
      'CLICK ME',
      name: 'dashboard_button',
      desc: '',
      args: [],
    );
  }

  /// `Select yout language`
  String get setting_language {
    return Intl.message(
      'Select yout language',
      name: 'setting_language',
      desc: '',
      args: [],
    );
  }

  /// `should_be_a_valid_email`
  String get should_be_a_valid_email {
    return Intl.message(
      'should_be_a_valid_email',
      name: 'should_be_a_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `email`
  String get email {
    return Intl.message(
      'email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `should_be_more_than_3_characters`
  String get should_be_more_than_3_characters {
    return Intl.message(
      'should_be_more_than_3_characters',
      name: 'should_be_more_than_3_characters',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password {
    return Intl.message(
      'password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `must_be_email_address`
  String get must_be_email_address {
    return Intl.message(
      'must_be_email_address',
      name: 'must_be_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Conferma Password`
  String get confirm_password {
    return Intl.message(
      'Conferma Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
      Locale.fromSubtags(languageCode: 'it'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}