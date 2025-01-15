import 'package:flutter/material.dart';
import 'package:islame_app/Home/Ahadeth/Ahadeth_tab.dart';
import 'package:islame_app/Home/Quran/Quran_tab.dart';
import 'package:islame_app/Home/Radio_tab.dart';
import 'package:islame_app/Home/Sabha_tab.dart';
import 'package:islame_app/themeing.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> tabs = [
    RadioTab(),
    SabhaTab(),
    AhadethTab(),
    QuranTab(),
  ];

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
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.titleMedium,
            ), //Shadow
          ),
          body: tabs[currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    backgroundColor: MyThemeData.GoldColor,
                    icon: ImageIcon(
                      AssetImage('assets/icon_images/icon_radio.png'),
                      size: 30,
                    ),
                    label: "Radio"),
                BottomNavigationBarItem(
                    backgroundColor: MyThemeData.GoldColor,
                    icon: ImageIcon(
                      AssetImage('assets/icon_images/icon_sebha.png'),
                      size: 30,
                    ),
                    label: "Sebha"),
                BottomNavigationBarItem(
                    backgroundColor: MyThemeData.GoldColor,
                    icon: ImageIcon(
                      AssetImage('assets/icon_images/icon_hadeth.png'),
                      size: 30,
                    ),
                    label: "Hadeth"),
                BottomNavigationBarItem(
                    backgroundColor: MyThemeData.GoldColor,
                    icon: ImageIcon(
                      AssetImage('assets/icon_images/icon_quran.png'),
                      size: 30,
                    ),
                    label: "Quran"),
              ]),
        ),
      ],
    );
  }
}
