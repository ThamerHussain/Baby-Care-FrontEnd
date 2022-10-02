import 'package:baby_care/services/requests.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/doctor_profile_page.dart';
import 'used_fonts_and_colors.dart';
import 'package:baby_care/icons/call_icons.dart';
import 'my_text.dart';

Padding doctorInfoRow(name, String specialty, imagePath) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: SingleChildScrollView(
      child: Column(
        children: [
          Obx(() {
            return Material(
              color: blackColor.value,
              child: InkWell(
                splashColor: pointEightFiveWhiteColor.value,
                onTap: (() => Get.to(DoctorProfilePage(
                    doctorName: name,
                    doctorImage: imagePath,
                    doctorSpeciality: specialty))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<BeveledRectangleBorder>(
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
                              color: pointOEightWhiteColor.value),
                          child: Center(
                              child: Icon(call.icon,
                                  color: pointNineWhiteColor.value, size: 15)),
                        )),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MyText(
                            data: name,
                            font: arabicFont700,
                            size: 15,
                            color: pointEightFiveWhiteColor.value),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 5, 3),
                          child: MyText(
                              data: specialty,
                              font: arabicFont400,
                              size: 15,
                              color: pointEightFiveWhiteColor.value),
                        ),
                        MyText(
                            data: 'غير متوفر لليوم',
                            font: arabicFont400,
                            size: 14,
                            color: pointEightFiveWhiteColor.value),
                      ],
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                      height: 64,
                      width: 64,
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          child: Image.asset(
                            imagePath,
                            width: 64,
                            height: 64,
                          )),
                    ),
                  ],
                ),
              ),
            );
          }),
          const SizedBox(height: 20),
        ],
      ),
    ),
  );
}
