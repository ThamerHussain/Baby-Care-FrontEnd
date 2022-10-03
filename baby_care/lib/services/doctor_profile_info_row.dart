import 'package:baby_care/services/models_moe.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorInfoRow extends StatefulWidget {
  const DoctorInfoRow(
      {super.key,
      required this.doctorName,
      required this.doctorImage,
      required this.doctorSpeciality});

  final String doctorName, doctorImage, doctorSpeciality;

  @override
  State<DoctorInfoRow> createState() => _DoctorInfoRowState();
}

class _DoctorInfoRowState extends State<DoctorInfoRow> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.4,
            height: height * 0.2,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Obx(() {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Text(widget.doctorName,
                                      style: TextStyle(
                                          color: pointEightFiveWhiteColor.value,
                                          fontSize: 20,
                                          fontFamily: arabicFont700),
                                      textAlign: TextAlign.end),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            MyText(
                                data: widget.doctorSpeciality,
                                font: arabicFont400,
                                size: 15,
                                color: pointEightFiveWhiteColor.value),
                            const SizedBox(height: 3),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MyText(
                                      data: "غير متوفر لليوم",
                                      font: arabicFont400,
                                      size: 15,
                                      color: pointEightFiveWhiteColor.value),
                                ] //const [MyStar(size: 23)],
                                )
                          ],
                        );
                      }),
                    ),
                  )
                ]),
          ),
          const SizedBox(width: 10),
          ImageProductProfile(image: widget.doctorImage)
        ],
      ),
    );
  }
}
