import 'package:flutter/material.dart';
import 'package:islame_app/Sura_Details/sura_details.dart';

class SuraNameItem extends StatelessWidget {
  String SuraName;

  SuraNameItem(this.SuraName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraName);
      },
      child: Text(SuraName,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
