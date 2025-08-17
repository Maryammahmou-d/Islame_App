import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraProvider extends ChangeNotifier {
  List<String> ayaat = [];

  void LoadFile(int index) async {
    //Future<String> content=rootBundle.loadString("assets/files/${index+1}.txt");
    String SuraContent =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = SuraContent.split("\n");
    ayaat = lines;
    notifyListeners();
  }
}
