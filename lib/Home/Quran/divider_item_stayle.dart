import 'package:flutter/material.dart';
import 'package:islame_app/Provider/theme_mode_provider.dart';
import 'package:provider/provider.dart';

class DividerItemStayle extends StatelessWidget {
  const DividerItemStayle({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeModeProvider>(context);
    return Divider(
      color: provider.mode == ThemeMode.light
          ? Theme.of(context).colorScheme.primary
          : Theme.of(context).colorScheme.secondary,
      thickness: 2,
      endIndent: 25,
      indent: 25,
    );
  }
}
