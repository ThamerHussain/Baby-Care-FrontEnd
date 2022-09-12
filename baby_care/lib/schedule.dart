import 'package:flutter/material.dart';
import 'config.dart';
import 'models.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    super.key,
    required this.day,
    required this.time,
  });

  final String time, day;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 180,
      child: Column(
        children: [
          MyText(
              data: day,
              font: arabicFont400,
              size: 20,
              color: pointEightFiveWhiteColor),
          SizedBox(
            height: 10,
          ),
          MyText(
              data: time,
              font: arabicFont400,
              size: 20,
              color: pointEightFiveWhiteColor)
        ],
      ),
    );
  }
}
