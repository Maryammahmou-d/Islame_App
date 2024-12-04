import 'package:flutter/material.dart';
import 'package:islame_app/Sura_Details/sura_details.dart';

import '../../Data Model/sura_details_arg.dart';

class SuraNameItem extends StatelessWidget {
  String SuraName;
  int index;

  SuraNameItem(this.SuraName, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsArg(SuraName, index));
      },
      child: Text(SuraName,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall),
    );
  }
}
