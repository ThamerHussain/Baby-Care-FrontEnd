

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models.dart';
import '../services/used_fonts_and_colors.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  var SigninEMailController = TextEditingController();
  var SigninPasswordController = TextEditingController();

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
                      Spacer(),
                      MyText(
                          data: "Baby Care",
                          font: englishFontBold,
                          size: 30,
                          color: whiteColor,
                          weight: FontWeight.w600),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  MyText(
                      data: '''يرجى إدخال معلومات
                    التسجيل''',
                      font: arabicFont400,
                      size: 25,
                      color: whiteColor,
                      weight: FontWeight.w500),
                  SizedBox(
                    height: 60,
                  ),
                  defaultFormField(
                      controller: SigninEMailController,
                      hinttext: "ادخل بريدك الالكتروني",
                      labletext: "البريد الالكتروني"),
                  defaultFormField(
                      controller: SigninPasswordController,
                      hinttext: "ادخل رمزك السري",
                      labletext: "الرمز  السري"),SizedBox(height:30,),
                  Row(
                    children: [
                      MyText(
                          data: "إنشاء حساب",
                          font: arabicFont400,
                          size: 20,
                          color: whiteColor,
                          weight: FontWeight.w500)
                    ],
                  ),
                  SizedBox(height:60,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextButton(
                        onPressed: (() {
                          SigninEMailController.clear();
                          SigninPasswordController.clear();
                        }),
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              width: 250,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: blackColor),
                              child: Center(
                                  child: MyText(
                                data: "تسجيل دخول",
                                font: arabicFont400,
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
