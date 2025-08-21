import 'package:flutter/material.dart';
import '../Themeing/Themeing.dart';

class ThemeModeProvider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;
  String modeCode = "Light";

  void changeThemeMode(ThemeMode newMode) {
    mode = newMode;
    notifyListeners();
  }

  Color selectionColor(ThemeMode mode) {
    if (this.mode == mode) {
      mode == ThemeMode.light ? modeCode = "Light" : modeCode = "Dark";
      return MyThemeData.GoldColor;
    } else {
      return MyThemeData.BlackColor;
    }
  }
}
