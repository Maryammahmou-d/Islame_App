import 'package:flutter/material.dart';
import 'package:islame_app/Themeing/Themeing.dart';

class LanguageProvider extends ChangeNotifier {
  String languageCode = "en";

  void changeLanguage(String languageCode) {
    this.languageCode = languageCode;
    notifyListeners();
  }

  Color selectedColor(String languageCode, ThemeMode mode) {
    if (this.languageCode == languageCode) {
      if (mode == ThemeMode.light) {
        return MyThemeData.GoldColor;
      } else {
        return MyThemeData.YellowColor;
      }
    } else {
      return MyThemeData.BlackColor;
    }
  }
}
