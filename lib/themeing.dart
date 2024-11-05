import 'package:flutter/material.dart';

class MyThemeData {
  static Color BlackColor = Color.fromRGBO(36, 36, 36, 1.0);
  static Color GoldColor = Color.fromRGBO(183, 147, 95, 1.0);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        headlineSmall: TextStyle(fontSize: 20, color: BlackColor),
        titleMedium: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: BlackColor),
        titleLarge: TextStyle(fontSize: 35, color: BlackColor),
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      textTheme: TextTheme(
        titleSmall: TextStyle(fontSize: 20, color: Colors.white),
        titleMedium: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        titleLarge: TextStyle(fontSize: 35, color: Colors.white),
      ));
}
