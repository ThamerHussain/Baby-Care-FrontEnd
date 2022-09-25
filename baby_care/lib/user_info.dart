import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'services/used_fonts_and_colors.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.header,
    required this.data,
  });

  final String header, data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: MyText(
                data: header,
                font: arabicFont400,
                size: 20,
                color: pointEightFiveWhiteColor.value),
          ),
          Row(
            children: [
              Icon(
                Icons.mode_edit_outlined,
                size: 20,
                color: whiteColor.value,
              ),
              Spacer(),
              MyText(
                  data: data, font: arabicFont400, size: 20, color: blueColor),
            ],
          ),
        ],
      ),
    );
  }
}
