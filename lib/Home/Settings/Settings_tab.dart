import 'package:flutter/material.dart';
import 'package:islame_app/Home/Settings/language_bottom_sheet.dart';
import 'package:islame_app/Home/Settings/theme_bottom_Sheet.dart';
import 'package:islame_app/Provider/Language_Provider.dart';
import 'package:islame_app/Provider/theme_mode_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LanguageProvider>(context);
    var modeProvider = Provider.of<ThemeModeProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: modeProvider.mode == ThemeMode.light
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).colorScheme.secondary,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: modeProvider.mode == ThemeMode.light
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                provider.languageCode == "en" ? "English" : "Arabic",
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: modeProvider.mode == ThemeMode.light
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.onPrimary),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.mode,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showThemeModeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: modeProvider.mode == ThemeMode.light
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                modeProvider.modeCode,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: modeProvider.mode == ThemeMode.light
                          ? Theme.of(context).colorScheme.secondary
                          : Theme.of(context).colorScheme.onSecondary,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageBottomSheet();
      },
    );
  }

  void showThemeModeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeModeBottomSheet();
      },
    );
  }
}
