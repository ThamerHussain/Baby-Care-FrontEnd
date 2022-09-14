import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'used_fonts_and_colors.dart';
import '../main_page.dart';
import 'package:baby_care/main_page.dart';
import 'my_text.dart';

RxInt selectedButton = 1.obs;

Obx buttomButton(IconData icon, title, buttonNumber, RxBool isDoctorPage,
    RxBool isProductPage, RxBool isListPage) {
  return Obx(() {
    Color color =
        selectedButton.value == buttonNumber ? whiteColor : halfWhiteColor;
    return TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<BeveledRectangleBorder>(
              BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
        onPressed: (() {
          selectedButton.value = buttonNumber;
          if (buttonNumber == 1) {
            isProductPage.value = true;
            isListPage.value = false;

          }
          if (buttonNumber == 2) {
            isProductPage.value = false;
            isDoctorPage.value = true;
            isListPage.value = false;
          }
          if (buttonNumber == 3) {
            isProductPage.value = false;
            isDoctorPage.value = false;
            isListPage.value = true;
          }
          isProductPage.refresh();
          isDoctorPage.refresh();
        }),
        child: Column(
          children: [
            Icon(icon, size: 31, color: color),
            SizedBox(height: 5),
            MyText(data: title, font: arabicFont700, size: 18, color: color)
          ],
        ));
  });
}
