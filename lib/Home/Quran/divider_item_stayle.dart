import 'package:flutter/material.dart';
import '../../Themeing/Themeing.dart';

class DividerItemStayle extends StatelessWidget {
  const DividerItemStayle({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyThemeData.GoldColor,
      thickness: 2,
      endIndent: 25,
      indent: 25,
    );
  }
}
