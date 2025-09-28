import 'package:flutter/material.dart';
import '../Themeing/Themeing.dart';

class ThemeModeProvider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;

  void changeThemeMode(ThemeMode newMode) {
    mode = newMode;
    notifyListeners();
  }

  Color selectionColor(ThemeMode mode) {
    if (this.mode == mode) {
      if (mode == ThemeMode.light) {
        return MyThemeData.GoldColor;
      } else {
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
