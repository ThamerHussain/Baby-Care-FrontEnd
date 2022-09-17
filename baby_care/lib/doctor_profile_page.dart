import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'doctor_info_row.dart';
import 'models.dart';
import 'services/description_container.dart';
import 'services/products_data.dart';
import 'services/schedule.dart';
import 'services/used_fonts_and_colors.dart';

class DoctorProfilePage extends StatefulWidget {
  const DoctorProfilePage({super.key});

  @override
  State<DoctorProfilePage> createState() => _DoctorProfilePageState();
}

class _DoctorProfilePageState extends State<DoctorProfilePage> {
  var size, width, height;
  final RxBool isNotFavorite = true.obs;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width,
          height: height,
          color: blackColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(3, 20, 3, 0),
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
                                    color: whiteColor,
                                  )
                                : Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: whiteColor,
                                  );
                          }),
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 30,
                              color: whiteColor,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  DoctorInfoRow(),
                  Expanded(
                      child: SingleChildScrollView(
                          child: DescriptionContainer(
                              title: "السيرة الذاتية", text: moeText))),
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
                              color: whiteColor,
                              weight:FontWeight.w400,),
                        ),
                        const SizedBox(height: 20),
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
                          onPressed: (() {}),
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                                color: blueColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: MyText(
                              data: "غير متوفر لليوم",
                              color: pointEightFiveWhiteColor,
                              size: 20,
                              weight: FontWeight.w400,
                              font: arabicFont400,
                            )),
                          ))),
                ]),
          ),
        ),
      ),
    );
  }
}
