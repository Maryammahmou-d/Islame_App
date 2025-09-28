import 'package:flutter/material.dart';

class MyThemeData {
  static Color BlackColor = Color.fromRGBO(36, 36, 36, 1.0);
  static Color GoldColor = Color.fromRGBO(183, 147, 95, 1.0);
  static Color WhiteColor = Color.fromRGBO(255, 255, 255, 1.0);
  static Color RedColor = Color.fromRGBO(255, 0, 0, 1.0);
  static Color BlueColor = Color.fromRGBO(20, 26, 46, 1.0);
  static Color ShadowBlueColor = Color.fromRGBO(144, 181, 224, 1.0);
  static Color YellowColor = Color.fromRGBO(250, 204, 29, 1.0);

  static ThemeData lightTheme = ThemeData(
    primaryColor: GoldColor,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: GoldColor,
      onPrimary: WhiteColor,
      secondary: BlackColor,
      onSecondary: WhiteColor,
      error: RedColor,
      onError: WhiteColor,
      surface: WhiteColor,
      onSurface: WhiteColor,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: BlackColor,
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
          fontSize: 20, color: BlackColor, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          fontSize: 25, fontWeight: FontWeight.bold, color: BlackColor),
      titleLarge: TextStyle(fontSize: 30, color: BlackColor),
      labelSmall: TextStyle(fontSize: 15, color: BlackColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: GoldColor,
      selectedItemColor: BlackColor,
      unselectedItemColor: WhiteColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: BlueColor,
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: BlueColor,
        onPrimary: WhiteColor,
        secondary: YellowColor,
        onSecondary: WhiteColor,
        error: RedColor,
        onError: WhiteColor,
        surface: ShadowBlueColor,
        onSurface: ShadowBlueColor),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: WhiteColor,
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      titleSmall: TextStyle(
          fontSize: 25, color: WhiteColor, fontWeight: FontWeight.bold),
      titleMedium: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: WhiteColor),
      titleLarge: TextStyle(fontSize: 35, color: WhiteColor),
      labelSmall: TextStyle(fontSize: 15, color: BlackColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: BlueColor,
      selectedItemColor: YellowColor,
      unselectedItemColor: WhiteColor,
    ),
  );
}
