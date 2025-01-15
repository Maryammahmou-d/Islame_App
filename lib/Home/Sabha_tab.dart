import 'package:flutter/material.dart';
import 'package:islame_app/themeing.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SabhaTab extends StatefulWidget {
  @override
  State<SabhaTab> createState() => _SabhaTabState();
}

class _SabhaTabState extends State<SabhaTab> {
  List<String> sebha = [
    "الله اكبر",
    "سبحان الله",
    "استغفر الله",
    "لا اله الا الله",
    "الحمد الله"
  ];
  int index = 0;
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          InkWell(
              onTap: () {
                Counter++;
                if (Counter == 30) {
                  index++;
                  Counter = 0;
                  if (index == sebha.length) {
                    index = 0;
                    Counter = 0;
                  }
                }
                setState(() {});
              },
              child: Image.asset("assets/images/sebha_icon.png")),
          SizedBox.fromSize(size: Size(0, 50)),
          Text(
            AppLocalizations.of(context)!.sebha_num,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox.fromSize(size: Size(0, 20)),
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 80,
            decoration: BoxDecoration(
              color: MyThemeData.GoldColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "${Counter}",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          SizedBox.fromSize(size: Size(0, 20)),
          Text(
            "${sebha[index]}",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox.fromSize(size: Size(0, 20)),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.GoldColor),
                color: Color.fromRGBO(255, 255, 255, 100),
                borderRadius: BorderRadius.circular(20)),
            child: DropdownButton(
                hint: Text("الاذكار"),
                alignment: Alignment.center,
                borderRadius: BorderRadius.circular(40),
                style: Theme.of(context).textTheme.titleSmall,
                items: [
                  DropdownMenuItem(
                    child: Text("الله اكبر"),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text("سبحان الله"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("استغفر الله"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("لا اله الا الله"),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text("الحمد الله"),
                    value: 4,
                  ),
                ],
                onChanged: (value) {
                  index = value!;
                  Counter = 0;
                  setState(() {});
                }),
          )
        ],
      ),
    );
  }
}
