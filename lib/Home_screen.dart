import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home Screen";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islami",
              style: Theme.of(context).textTheme.titleMedium,
            ), //Shadow
          ),
          body: Column(
            children: [],
          ),
        ),
      ],
    );
  }
}
