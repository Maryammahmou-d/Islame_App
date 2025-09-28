import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Home/Ahadeth/Ahadeth_tab.dart';

class AhadethProvider extends ChangeNotifier {
  List<HadethData> Ahadeth = [];

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
    notifyListeners();
  }
}
