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
      if (mode == ThemeMode.light) {
        modeCode = "Light";
        return MyThemeData.GoldColor;
      } else {
        modeCode = "Dark";
        return MyThemeData.YellowColor;
      }
    }
    return MyThemeData.BlackColor;
  }

  String changeBackground() {
    if (mode == ThemeMode.light) {
      return "assets/images/default_bg.png";
    } else {
      return "assets/images/dark_bg.png";
    }
  }
}
