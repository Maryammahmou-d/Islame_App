import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islame_app/themeing.dart';

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
            "عدد التسبيحات ",
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
        ],
      ),
    );
  }
}
