class Language {
  String code;
  String englishName;
  String localName;
  String flag;
  bool selected;

  Language(this.code, this.englishName, this.localName, this.flag, {this.selected = false});
}

class LanguagesList {
  List<Language> _languages;

  LanguagesList() {
    this._languages = [
      new Language("it", "Italiano", "Italiano", "assets/images/italy.png"),
      new Language("en", "English", "English", "assets/images/united-states-of-america.png"),
      new Language("fr", "French", "Français", "assets/images/france.png"),
      new Language("es", "Spagnolo", "Spagnolo", "assets/images/france.png")
    ];
  }

  List<Language> get languages => _languages;
}
