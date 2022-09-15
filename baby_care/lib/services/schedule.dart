import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';

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
          MyText(
              data: day,
              font: arabicFont400,
              size: 20,
              color: pointEightFiveWhiteColor),
          MyText(
              data: time,
              font: arabicFont400,
              size: 15,
              color: pointEightFiveWhiteColor)
        ],
      ),
    );
  }
}
