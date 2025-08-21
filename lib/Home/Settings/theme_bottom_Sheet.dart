import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Provider/theme_mode_provider.dart';

class ThemeModeBottomSheet extends StatelessWidget {
  const ThemeModeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeModeProvider>(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      // height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          InkWell(
              onTap: () {
                provider.changeThemeMode(ThemeMode.light);
                Navigator.pop(context);
              },
              child: themeItem(context, "Light", provider, ThemeMode.light)),
          SizedBox(),
          InkWell(
              onTap: () {
                provider.changeThemeMode(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: themeItem(context, "Dark", provider, ThemeMode.dark)),
        ],
      ),
    );
  }

  Widget themeItem(
          BuildContext context, String text, var provider, ThemeMode temp) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: provider.selectionColor(temp),
                  )),
          provider.mode == temp
              ? Icon(
                  Icons.done,
                  color: Colors.green,
                  size: 30,
                )
              : SizedBox(),
        ],
      );
}
