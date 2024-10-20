import 'package:flutter/material.dart';
import 'package:islame_app/main_page.dart';

void main() {
  runApp(IslameApp());
}

class IslameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (c) => HomeScreen(),
      },
    );
  }
}
