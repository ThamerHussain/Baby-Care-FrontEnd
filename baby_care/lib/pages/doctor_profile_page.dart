import 'package:baby_care/services/description_container.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import '../services/doctor_profile_info_row.dart';
import '../services/schedule.dart';

class DoctorProfilePage extends StatefulWidget {
  const DoctorProfilePage(
      {super.key,
      required this.doctorName,
      required this.doctorImage,
      required this.doctorSpeciality,
      required this.description
      });

  final String doctorName, doctorImage, doctorSpeciality, description;

  @override
  State<DoctorProfilePage> createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends State<DoctorProfilePage> {
  final RxBool isNotFavorite = true.obs;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Obx(() {
        return Container(
          width: width,
          height: height,
          color: blackColor.value,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 40, 3, 0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            isNotFavorite.value = !isNotFavorite.value;
                          },
                          icon: Obx(() {
                            return isNotFavorite.value
                                ? Icon(
                                    Icons.favorite_border,
                                    size: 30,
                                    color: whiteColor.value,
                                  )
                                : Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: whiteColor.value,
                                  );
                          }),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () => Get.back(),
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 30,
                              color: whiteColor.value,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),//20),
                  DoctorInfoRow(
                      doctorName: widget.doctorName,
                      doctorSpeciality: widget.doctorSpeciality,
                      doctorImage: widget.doctorImage),
                  Expanded(
                      child: SingleChildScrollView(
                          child: DescriptionContainer(
                              title: "السيرة الذاتية", text: widget.description))),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: MyText(
                              data: 'أوقات دوام العيادة',
                              font: arabicFont400,
                              size: 25,
                              color: whiteColor.value),
                        ),
                        const SizedBox(height: 10),//20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Schedule(
                                    day: 'الاثنين',
                                    time: ' 8 صباحاً - 8 مساءاً'),
                                Schedule(
                                    day: 'الاربعاء',
                                    time: ' 8 صباحاً - 8 مساءاً'),
                                Schedule(
                                    day: 'السبت', time: ' 8 صباحاً - 8 مساءاً'),
                              ],
                            ),
                            Column(
                              children: const [
                                Schedule(
                                    day: 'الاحد', time: ' 8 صباحاً - 8 مساءاً'),
                                Schedule(
                                    day: 'الثلاثاء',
                                    time: ' 8 صباحاً - 8 مساءاً'),
                                Schedule(
                                    day: 'الخميس',
                                    time: ' 8 صباحاً - 8 مساءاً'),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                BeveledRectangleBorder>(BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                          ),
                          onPressed: (() {
                            FlutterPhoneDirectCaller.callNumber('07818115142');
                          }),
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                                color: blueColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: MyText(
                                    data: "إتصل للحجز",
                                    font: arabicFont400,
                                    size: 20,
                                    color: whiteColor.value)),
                          ))),
                ]),
          ),
        );
      }),
    );
  }
}
