import 'package:flutter/material.dart';
import 'used_fonts_and_colors.dart';

Padding tField(controller, hint, fontFamily, textDirection,) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
      controller: controller,
      textAlign: TextAlign.start,
      textDirection: textDirection,
      style: TextStyle(
          fontSize: 25,
          fontFamily: fontFamily,
          color: pointEightFiveWhiteColor),
      maxLines: 1,
      minLines: 1,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        fillColor: pointOEightWhiteColor,
        hintText: hint,
        suffix: SizedBox(width: 10),
        hintTextDirection: TextDirection.rtl,
        hintStyle: TextStyle(
            fontSize: 30,
            fontFamily: arabicFont400,
            color: pointThreeWhiteColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
        ),
      ),
    ),
  );
}
//couldn't change the keyboard theme to dark
