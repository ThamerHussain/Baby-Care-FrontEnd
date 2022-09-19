import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'used_fonts_and_colors.dart';

Padding tField(controller, hint, fontFamily, textDirection,
    {secure = false,
    emailValidation = false,
    passwordValidation = false,
    firstNameValidation = false,
    lastNameValidation = false}) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Obx(() {
      return TextFormField(
        obscureText: secure,
        controller: controller,
        textAlign: TextAlign.start,
        textDirection: textDirection,
        style: TextStyle(
            fontSize: 25,
            fontFamily: fontFamily,
            color: pointEightFiveWhiteColor.value),
        maxLines: 1,
        minLines: 1,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          filled: true,
          fillColor: pointOEightWhiteColor.value,
          hintText: hint,
          suffix: const SizedBox(width: 10),
          hintTextDirection: TextDirection.rtl,
          hintStyle: TextStyle(
              fontSize: 30,
              fontFamily: arabicFont400,
              color: pointThreeWhiteColor.value),
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
              color: redColor,
              width: 1,
            ),
          ),
        ),
        validator: emailValidation
            ? (value) {
                if (value!.isEmpty ||
                    !RegExp('^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+.[a-z]')
                        .hasMatch(value)) {
                  return " ادخل بريد الكتروني صحيح ";
                } else {}
                return null;
              }
            : passwordValidation
                ? (value) {
                    if (value!.isEmpty || value.length < 8) {
                      return " كلمة المرور اقصر من 8 احرف ";
                    } else {}
                    return null;
                  }
                : firstNameValidation
                    ? (value) {
                        if (value!.isEmpty) {
                          return "ادخل الاسم ";
                        } else {}
                        return null;
                      }
                    : lastNameValidation
                        ? (value) {
                            if (value!.isEmpty) {
                              return "ادخل أسم العائلة";
                            } else {}
                            return null;
                          }
                        : null,
      );
    }),
  );
}
