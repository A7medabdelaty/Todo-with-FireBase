import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  List languageItems = ['English', 'Arabic'];
  String languageValue = 'English';

  void changeLanguageDropDown(value) {
    languageValue = value;
    changeLanguage(value == 'English' ? 'en' : 'ar');
    notifyListeners();
  }

  String language = 'en';

  void changeLanguage(value) {
    language = value;
  }

  String modeValue = 'Light';
  List modeItems = ['Light', 'Dark'];

  void changeModeDropDown(value) {
    modeValue = value;
    changeTheme(value);
    notifyListeners();
  }

  ThemeMode theme = ThemeMode.light;

  void changeTheme(String theme) {
    if (theme == "Light") {
      this.theme = ThemeMode.light;
    } else if (theme == 'Dark') {
      this.theme = ThemeMode.dark;
    } else {
      this.theme = ThemeMode.system;
    }
  }
}
