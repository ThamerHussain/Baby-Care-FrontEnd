import 'package:baby_care/config.dart';
import 'package:baby_care/discreption.dart';
import 'package:baby_care/models.dart';
import 'discreption.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({super.key});

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  var size, width, height;
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
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: (() {}),
                          icon: Icon(Icons.favorite_border),
                          color: whiteColor,
                          iconSize: 35,
                        ),
                        IconButton(
                          onPressed: (() {}),
                          icon: Icon(Icons.arrow_forward_ios),
                          color: whiteColor,
                          iconSize: 35,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            width: width * 0.4,
                            height: height * 0.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                MyText(
                                    data: "د. محمد عبد الرسول",
                                    font: arabicFont700,
                                    size: 22,
                                    color: whiteColor),
                                SizedBox(
                                  height: 30,
                                ),
                                MyText(
                                    data: "اخصائي اطفال",
                                    font: arabicFont400,
                                    size: 23,
                                    color: pointEightFiveWhiteColor),
                                SizedBox(
                                  height: 20,
                                ),
                                MyText(
                                    data: '8 صباحاً - 8 مساءاً',
                                    font: arabicFont400,
                                    size: 20,
                                    color: pointEightFiveWhiteColor),
                                SizedBox(
                                  height: 5,
                                ),
                              ],
                            )),
                        Image.asset(
                          'assets/images/dr_mohammed.jpg',
                          width: 160,
                          height: 160,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          child: DiscreptionContainer(
                              title: "السيرة الذاتية",
                              text:
                                  'والله والله والله وانت مامحلفني هذا التيشيرت الا يخبل خاماية غير تركي ماركة فول ليكرا تشك شك شنو ثلج  بالصيف ونار بالشتا ولاعبالك ب3 وونص اخذهة وبيهة ضمان شهرين لا تنشك ولا تنفتك غير اصلية مال عمك اخذهة وخل ابنك يتهنة'))),
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
                              color: whiteColor),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
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
                              children: [
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
                      padding: EdgeInsets.only(bottom: 20),
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
                                    data: "أتصل للحجز ",
                                    font: arabicFont400,
                                    size: 25,
                                    color: whiteColor)),
                          ))),
                ]),
          ),
        ),
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  const Schedule({
    super.key,
    required this.day,
    required this.time,
  });

  final String time, day;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 120,
      child: Column(
        children: [
          MyText(
              data: day,
              font: arabicFont400,
              size: 20,
              color: pointEightFiveWhiteColor),
          MyText(
              data: time,
              font: arabicFont400,
              size: 15,
              color: pointEightFiveWhiteColor)
        ],
      ),
    );
  }
}
