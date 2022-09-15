
import 'package:flutter/material.dart';

import '../models.dart';
import 'used_fonts_and_colors.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    super.key,
    required this.day,
    required this.time,
  });

  final String time, day;
//not reviewed
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 120,
      child: Column(
        children: [
          MyText(data: day, font: englishFontMedium, size: 20, color: pointEightFiveWhiteColor, weight: FontWeight.w400)
          ,MyText(
              data: time,
              font: arabicFont400,
              size: 15,
              color: pointEightFiveWhiteColor,
              weight:FontWeight.w400,)
        ],
      ),
    );
  }
}
