import 'package:flutter/material.dart';
import 'package:islame_app/Themeing/Themeing.dart';

class MyProvider extends ChangeNotifier {
  String languageCode = "en";

  void changeLanguage(String languageCode) {
    this.languageCode = languageCode;
    notifyListeners();
  }

  Color selectedColor(String languageCode) {
    return this.languageCode == languageCode
        ? MyThemeData.GoldColor
        : MyThemeData.BlackColor;
  }
}
