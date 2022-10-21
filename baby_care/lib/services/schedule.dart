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
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return SizedBox(
      height: height*0.09,
      width: width*0.29,
      child: Obx(() {
        return Column(
          children: [
            MyText(
                data: day,
                font: arabicFont400,
                size: width*0.045,
                color: pointEightFiveWhiteColor.value),
            MyText(
                data: time,
                font: arabicFont400,
                size: width*0.042,
                color: pointEightFiveWhiteColor.value)
          ],
        );
      }),
    );
  }
}
