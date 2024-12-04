import 'package:flutter/material.dart';
import 'package:islame_app/Home/Home_screen.dart';
import 'package:islame_app/Sura_Details/sura_details.dart';
import 'package:islame_app/themeing.dart';

void main() {
  runApp(IslameApp());
}

class IslameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
