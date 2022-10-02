import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_text.dart';

Padding listButton(title, icon, function) {
  return Padding(
    // padding: const EdgeInsets.only(bottom: 20.0),
    padding: const EdgeInsets.only(bottom: 5.0),
    child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<BeveledRectangleBorder>(
              BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
        onPressed: (function),
        child: Obx(() {
          return Container(
            width: 360,
            height: 77,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: pointOEightWhiteColor.value),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(icon, color: whiteColor.value, size: 36),
                  MyText(
                      data: title,
                      font: arabicFont400,
                      size: 30,
                      color: whiteColor.value),
                ],
              ),
            )),
          );
        })),
  );
}
