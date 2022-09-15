import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'filters_and_items_column.dart';
import 'used_fonts_and_colors.dart';
import 'package:baby_care/icons/call_icons.dart';

import 'my_text.dart';

Padding doctorInfoRow(name, String specialty, imagePath) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                      BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                ),
                onPressed: (() {}),
                child: Container(
                  width: 51,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pointOEightWhiteColor),
                  child: Center(
                      child: Icon(call.icon,
                          color: pointNineWhiteColor, size: 15)),
                )),
            SizedBox(width: 80),
            Column(
              children: [
                MyText(
                    data: name,
                    font: arabicFont700,
                    size: 15,
                    color: pointEightFiveWhiteColor),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: MyText(
                      data: 'specialty',
                      font: arabicFont700,
                      size: 15,
                      color: pointEightFiveWhiteColor),
                ),
                MyText(
                    data: '6 صباحاً - 1 مساءاً',
                    font: arabicFont700,
                    size: 15,
                    color: pointEightFiveWhiteColor),
              ],
            ),
            SizedBox(width: 5),
            SizedBox(
              height: 64,
              width: 64,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    imagePath,
                    width: 64,
                    height: 64,
                  )),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    ),
  );
}
