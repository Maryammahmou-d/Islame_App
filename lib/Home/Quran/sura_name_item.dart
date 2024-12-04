import 'package:flutter/material.dart';

class SuraNameItem extends StatelessWidget {
  String SuraName;

  SuraNameItem(this.SuraName);

  @override
  Widget build(BuildContext context) {
    return Text(SuraName,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleSmall);
  }
}
