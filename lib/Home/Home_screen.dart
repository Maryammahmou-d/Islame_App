import 'package:flutter/material.dart';
import 'package:islame_app/Home/Ahadeth/Ahadeth_tab.dart';
import 'package:islame_app/Home/Quran/Quran_tab.dart';
import 'package:islame_app/Home/radio/Radio_tab.dart';
import 'package:islame_app/Home/sebha/Sabha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../Provider/theme_mode_provider.dart';
import 'Settings/Settings_tab.dart';

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
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeModeProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.changeBackground(),
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
              type: BottomNavigationBarType.shifting,
              currentIndex: currentIndex,
              onTap: (index) {
                currentIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: ImageIcon(
                      AssetImage('assets/icon_images/icon_radio.png'),
                      size: 30,
                    ),
                    label: AppLocalizations.of(context)!.radio_nav),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: ImageIcon(
                      AssetImage('assets/icon_images/icon_sebha.png'),
                      size: 30,
                    ),
                    label: AppLocalizations.of(context)!.sebha_nav),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: ImageIcon(
                      AssetImage('assets/icon_images/icon_hadeth.png'),
                      size: 30,
                    ),
                    label: AppLocalizations.of(context)!.ahadeth_nav),
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: ImageIcon(
                      AssetImage('assets/icon_images/icon_quran.png'),
                      size: 30,
                    ),
                    label: AppLocalizations.of(context)!.quran_nav),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  icon: Icon(
                    Icons.settings,
                    size: 25,
                  ),
                  label: AppLocalizations.of(context)!.settings_nav,
                )
              ]),
        ),
      ],
    );
  }
}
