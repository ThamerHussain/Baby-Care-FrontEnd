

import 'package:baby_care/config.dart';
import 'package:baby_care/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
 
  var EMailController = TextEditingController();
  var PasswordController = TextEditingController();
  var NameController = TextEditingController();
  var FamiyNAmeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Container(
              child: ListView(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Row(
                    children: [
                      MyText(
                          data: "لدي حساب",
                          font: arabicFont400,
                          size: 22,
                          color: whiteColor,
                          weight: FontWeight.w600),
                      Spacer(),
                      MyText(
                          data: "Baby Care",
                          font:englishFontMedium,
                          size: 30,
                          color: whiteColor,
                          weight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyText(
                      data: '''يرجى إدخال معلومات
                    التسجيل''',
                      font:arabicFont400,
                      size: 25,
                      color:whiteColor,
                      weight: FontWeight.w500),
                  SizedBox(
                    height: 30,
                  ),
                  defaultFormField(
                      controller: EMailController,
                      hinttext: "ادخل بريدك الالكتروني",
                      labletext: "البريد الالكتروني"),
                  defaultFormField(
                      controller: PasswordController,
                      hinttext: "ادخل رمزك السري",
                      labletext: "الرمز  السري"),
                  defaultFormField(
                      controller: NameController,
                      hinttext: "ادخل اسمك",
                      labletext: "الاسم"),
                  defaultFormField(
                      controller: FamiyNAmeController,
                      hinttext: "ادخل الاسم",
                      labletext: "اسم العائلة"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextButton(
                        onPressed: (() {
                          EMailController.clear();
                          PasswordController.clear();
                          NameController.clear();
                          FamiyNAmeController.clear();
                        }),
                        child: Padding(padding:EdgeInsets.symmetric(horizontal:40),child:Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: blackColor),
                          child: Center(
                              child: MyText(
                            data: "انشاء حساب",
                            font:arabicFont400,
                            size: 20,
                            color: whiteColor,
                            weight: FontWeight.w600,
                          )),
                        ))),
                  )
                ])
              ]),
            )),
      ]),
    );
  }
}

