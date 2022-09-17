
import 'package:flutter/material.dart';

import 'my_text.dart';
import 'used_fonts_and_colors.dart';

Padding listButton(title, icon) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 20.0),
    child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<BeveledRectangleBorder>(
              BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
        ),
        onPressed: (() {}),
        child: Container(
          width: 360,
          height: 77,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: pointEightFiveWhiteColor),
          child: Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(icon, color: whiteColor, size: 36),
                    MyText(
                        data: title,
                        font: arabicFont400,
                        size: 30,
                        color: whiteColor),
                  ],
                ),
              )),
        )),
  );
}