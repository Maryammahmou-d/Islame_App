import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/Data%20Model/sura_details_arg.dart';
import 'package:islame_app/themeing.dart';
import '../Home/Quran/divider_item_stayle.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "Sura_details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> ayaat = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArg SuraDetails =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    if (ayaat.isEmpty) {
      LoadFile(SuraDetails.index);
    }
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
                AppLocalizations.of(context)!.appTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            body: Center(
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: MyThemeData.GoldColor, width: 2),
                  borderRadius: BorderRadius.circular(60),
                  color: Color.fromRGBO(255, 255, 255, 100),
                ),
                child: Column(
                  children: [
                    Text(
                      "${AppLocalizations.of(context)!.sura}${SuraDetails.SuraName}",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    DividerItemStayle(),
                    Expanded(
                        child: ayaat.length == 0
                            ? Center(child: CircularProgressIndicator())
                            : ListView.builder(
                                itemCount: ayaat.length,
                                itemBuilder: (_, index) {
                                  return Text(
                                    "${ayaat[index]}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(fontSize: 20),
                                    textAlign: TextAlign.right,
                                  );
                                }))
                  ],
                ),
              ),
            ))
      ],
    );
  }

  void LoadFile(int index) async {
    String SuraContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = SuraContent.split("\n");
    ayaat = lines;
    setState(() {});
  }
}
