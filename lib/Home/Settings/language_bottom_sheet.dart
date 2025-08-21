import 'package:flutter/material.dart';
import 'package:islame_app/Provider/Language_Provider.dart';
import 'package:islame_app/Provider/theme_mode_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  bool? checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LanguageProvider>(context);
    var modeProvider = Provider.of<ThemeModeProvider>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      // height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "English",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: provider.selectedColor("en", modeProvider.mode)),
                ),
                provider.languageCode == "en"
                    ? Icon(
                        Icons.done,
                        color: Colors.green,
                        size: 30,
                      )
                    : SizedBox(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Arabic",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color:
                              provider.selectedColor("ar", modeProvider.mode),
                        )),
                provider.languageCode == "ar"
                    ? Icon(
                        Icons.done,
                        color: Colors.green,
                        size: 30,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
