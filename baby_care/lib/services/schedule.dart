import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    super.key,
    required this.day,
    required this.time,
  });

  final String time, day;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 120,
      child: Obx(() {
        return Column(
          children: [
            MyText(
                data: day,
                font: arabicFont400,
                size: 20,
                color: pointEightFiveWhiteColor.value),
            MyText(
                data: time,
                font: arabicFont400,
                size: 15,
                color: pointEightFiveWhiteColor.value)
          ],
        );
      }),
    );
  }
}
