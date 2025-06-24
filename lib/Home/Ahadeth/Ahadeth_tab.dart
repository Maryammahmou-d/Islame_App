import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/Themeing/Themeing.dart';
import '../Quran/divider_item_stayle.dart';
import 'hadeth_details.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethData> Ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (Ahadeth.isEmpty) {
      LoadHadethFile();
    }
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Center(child: Image.asset("assets/images/hadeth_logo.png")),
      Text(
        AppLocalizations.of(context)!.hadeth_name,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(color: MyThemeData.GoldColor),
        textAlign: TextAlign.center,
      ),
      Expanded(
          child: Ahadeth.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (c, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            HadethDetails.routeName,
                            arguments: Ahadeth[index],
                          );
                        },
                        child: Text(
                          Ahadeth[index].title,
                          style: Theme.of(context).textTheme.titleSmall,
                          textAlign: TextAlign.center,
                        ));
                  },
                  separatorBuilder: (_, index) => DividerItemStayle(),
                  itemCount: Ahadeth.length))
    ]);
  }

  void LoadHadethFile() async {
    /*Future<String> content=rootBundle.loadString("assets/files/ahadeth.txt");
    content.then((value){})
     */
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> AllAhadeth =
        content.trim().split("#\r\n"); /*To remove withe space and empty line*/

    for (int i = 0; i < AllAhadeth.length; i++) {
      String hadeth = AllAhadeth[i];
      /*print(hadeth);*/

      List<String> hadethLines = hadeth.split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      HadethData hadethData = HadethData(title, hadethLines);
      Ahadeth.add(hadethData);
    }
    setState(() {});
  }
}

class HadethData {
  String title;
  List<String> content;

  HadethData(this.title, this.content);
}
