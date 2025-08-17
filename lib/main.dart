import 'package:flutter/material.dart';
import 'package:islame_app/Home/Home_screen.dart';
import 'package:islame_app/Themeing/themeing.dart';
import 'package:provider/provider.dart';
import 'Home/Ahadeth/hadeth_details.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Home/Sura_Details/sura_details.dart';
import 'Provider/Language_Provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(ChangeNotifierProvider(
    create: (context) => LanguageProvider(),
    child: IslameApp(),
  ));
}

class IslameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LanguageProvider>(context);

    // TODO: implement build
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: Locale(provider.languageCode),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDetailsScreen.routeName: (_) => SuraDetailsScreen(),
        HadethDetails.routeName: (_) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
