import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islame_app/themeing.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox.fromSize(size: Size(0, 20)),
        Text(
          "اذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox.fromSize(size: Size(0, 20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_next,
              size: 60,
              color: MyThemeData.GoldColor,
            ),
            Icon(
              Icons.play_arrow,
              size: 80,
              color: MyThemeData.GoldColor,
            ),
            Icon(
              Icons.skip_previous,
              size: 60,
              color: MyThemeData.GoldColor,
            ),
          ],
        )
      ],
    );
  }
}
