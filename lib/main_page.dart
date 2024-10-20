import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Islami"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
