import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/controllers/LanguageController.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/models/language.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:flutter_app/setting_repository.dart' as settingRepo;
import 'package:commons/commons.dart' as commons;

class LanguageWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  LanguageWidget({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _LanguageWidgetState createState() {
    return _LanguageWidgetState();
  }
}

class _LanguageWidgetState extends StateMVC<LanguageWidget> {
  LanguageController _con;
  LanguagesList languagesList;
  commons.SharedPreferences prefs;

  _LanguageWidgetState() : super(LanguageController()) {
    _con = controller;
  }

  @override
  void initState() {
    super.initState();
    languagesList = new LanguagesList();
    setSharedPrefs();
  }

  void setSharedPrefs() async {
    prefs = await commons.SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _con.scaffoldKey,
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.greenAccent,
          brightness: Brightness.light,
          elevation: 0,
          centerTitle: true,
          title: Text(
            S.of(context).setting_language.toUpperCase(),
            style: Theme.of(context).textTheme.title.merge(TextStyle(letterSpacing: 1.3)),
          )
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ExcludeSemantics(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                leading: Icon(
                  Icons.translate,
                  color: Theme.of(context).hintColor,
                ),
                title: Text(
                  S.of(context).app_name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline6,
                ),
                subtitle: Text(S.of(context).setting_language),
              ),
            )),
            SizedBox(height: 10),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              itemCount: languagesList.languages.length,
              separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              },
              itemBuilder: (context, index) {
                Language _language = languagesList.languages.elementAt(index);

                settingRepo
                    .getDefaultLanguage(settingRepo.setting.value.mobileLanguage.value.languageCode)
                    .then((_langCode) {
                  if (_langCode == _language.code) {
                    _language.selected = true;
                  }
                });
                return Semantics(child: InkWell(
                  onTap: () async {
                    settingRepo.setting.value.mobileLanguage.value = new Locale(_language.code, '');
                      prefs.setString('mobileLanguage', _language.code);
                     settingRepo.setting.notifyListeners();
                    languagesList.languages.forEach((_l) {
                      setState(() {
                        _l.selected = false;
                      });
                    });
                    _language.selected = !_language.selected;
                    settingRepo.setDefaultLanguage(_language.code);
                    setState(() {

                    });
                  },
                  child: ExcludeSemantics(child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Stack(
                          alignment: AlignmentDirectional.center,
                          children: <Widget>[
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                image: DecorationImage(image: AssetImage(_language.flag), fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              height: _language.selected ? 40 : 0,
                              width: _language.selected ? 40 : 0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                color: Theme.of(context).accentColor.withOpacity(_language.selected ? 0.85 : 0),
                              ),
                              child: Icon(
                                Icons.check,
                                size: _language.selected ? 24 : 0,
                                color: Theme.of(context).primaryColor.withOpacity(_language.selected ? 0.85 : 0),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                _language.englishName,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: Theme.of(context).textTheme.subhead,
                              ),
                              Text(
                                _language.localName,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ), label: 'btn_' + _language.englishName.toLowerCase());
              },
            ),
          ],
        ),
      )
    );
  }
}
