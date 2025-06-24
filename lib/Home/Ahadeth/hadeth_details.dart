import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islame_app/Themeing/Themeing.dart';
import '../Quran/divider_item_stayle.dart';
import 'Ahadeth_tab.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth details";

  @override
  Widget build(BuildContext context) {
    var hadethDetails =
        ModalRoute.of(context)?.settings.arguments as HadethData;
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
            ),
          ),
          body: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromRGBO(250, 250, 250, 100),
                border: Border.all(
                  color: MyThemeData.GoldColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Column(
                children: [
                  Text(
                    hadethDetails.title,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  DividerItemStayle(),
                  Expanded(
                    child: ListView.builder(
                        itemCount: hadethDetails.content.length,
                        itemBuilder: (_, index) {
                          return Text(
                            hadethDetails.content[index],
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.right,
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
