import 'package:flutter/material.dart';
import 'package:islame_app/Themeing/Themeing.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../Provider/theme_mode_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeModeProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox.fromSize(size: Size(0, 20)),
        Text(
          AppLocalizations.of(context)!.quran_radio,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox.fromSize(size: Size(0, 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_next,
              size: 60,
              color: provider.mode == ThemeMode.light
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
            ),
            Icon(
              Icons.play_arrow,
              size: 80,
              color: provider.mode == ThemeMode.light
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
            ),
            Icon(
              Icons.skip_previous,
              size: 60,
              color: provider.mode == ThemeMode.light
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.secondary,
            ),
          ],
        )
      ],
    );
  }
}
