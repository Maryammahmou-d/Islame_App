import 'package:flutter/material.dart';
import 'package:islame_app/themeing.dart';

import '../Home/Quran/divider_item_stayle.dart';

class SuraDetailsScreen extends StatelessWidget {
  const SuraDetailsScreen({super.key});

  static const String routeName = "Sura_details";

  @override
  Widget build(BuildContext context) {
    String? SuraName = ModalRoute.of(context)?.settings.arguments.toString();
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Scaffold(
            appBar: AppBar(
              title: Text(
                "Islami",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            body: Center(
              child: Container(
                width: 350,
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80),
                  color: Color.fromRGBO(255, 255, 255, 150),
                ),
                child: Column(
                  children: [
                    Text(
                      "Sura ${SuraName}",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    DividerItemStayle(),
                  ],
                ),
              ),
            ))
      ],
    );
  }
}
