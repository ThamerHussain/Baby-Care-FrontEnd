import 'package:baby_care/icons/material_icons.dart';
import 'package:baby_care/schedule.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:baby_care/models/text_field.dart';
import 'package:baby_care/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'config.dart';
import 'expansion_tile.dart';
import 'models.dart';
import 'discreption.dart';

class DoctorProfile extends StatefulWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  State<DoctorProfile> createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Container(
          color: blackColor,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          'د. محمد عبد الرسول ',
                          style: TextStyle(
                              height: 1.2,
                              fontSize: 30,
                              // fontWeight: weight,
                              fontFamily: arabicFont400,
                              color: whiteColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: MyText(
                            data: 'أخصائي أطفال',
                            font: arabicFont400,
                            size: 25,
                            color: halfWhiteColor),
                      ),
                      MyText(
                          data: 'الساعة 8 صباحاً - 7 مساءاً',
                          font: arabicFont400,
                          size: 22,
                          color: halfWhiteColor),
                    ],
                  ),
                  ClipRRect(
                    child: Image.asset(
                      'assets/images/dr_mohammed.jpg',
                      width: 170,
                      height: 171,
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.amber,
                child: DiscreptionContainer(
                    title: 'السيرة الذاتية',
                    text: '''بكلوريوس طب عام من جامعة بغداد كلية الطب
تخصص الرعاية الصحية للأطفال من جامعة ميونخ
بورد الرعاية الصحية للأطفال من جامعة كامبريدج...'''),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: MyText(
                            data: 'أوقات دوام العيادة',
                            font: arabicFont400,
                            size: 27,
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
                                  time: 'الساعة 8 صباحاً - 8 مساءاً'),
                              Schedule(
                                  day: 'الاربعاء',
                                  time: 'الساعة 8 صباحاً - 8 مساءاً'),
                              Schedule(
                                  day: 'السبت',
                                  time: 'الساعة 8 صباحاً - 8 مساءاً'),
                            ],
                          ),
                          Column(
                            children: [
                              Schedule(
                                  day: 'الاحد',
                                  time: 'الساعة 8 صباحاً - 8 مساءاً'),
                              Schedule(
                                  day: 'الثلاثاء',
                                  time: 'الساعة 8 صباحاً - 8 مساءاً'),
                              Schedule(
                                  day: 'الخميس',
                                  time: 'الساعة 8 صباحاً - 8 مساءاً'),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
