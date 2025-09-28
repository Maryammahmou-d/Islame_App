import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_app/Provider/ahadeth_provider.dart';
import 'package:provider/provider.dart';
import '../Quran/divider_item_stayle.dart';
import 'hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}
class _AhadethTabState extends State<AhadethTab> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AhadethProvider()..LoadHadethFile(),
      builder: (context, widget) {
        var ahadethProvider = Provider.of<AhadethProvider>(context);
        return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: Image.asset("assets/images/hadeth_logo.png")),
              Text(
                AppLocalizations.of(context)!.hadeth_name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                  child: ahadethProvider.Ahadeth.isEmpty
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
                                    arguments: ahadethProvider.Ahadeth[index],
                                  );
                                },
                                child: Text(
                                  ahadethProvider.Ahadeth[index].title,
                                  style: Theme.of(context).textTheme.titleSmall,
                                  textAlign: TextAlign.center,
                                ));
                          },
                          separatorBuilder: (_, index) => DividerItemStayle(),
                          itemCount: ahadethProvider.Ahadeth.length))
            ]);
      },
    );
  }


}

class HadethData {
  String title;
  List<String> content;

  HadethData(this.title, this.content);
}
