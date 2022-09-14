import 'package:baby_care/services/text_field.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'services/used_fonts_and_colors.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  var signInEmailController = TextEditingController();
  var signInPasswordController = TextEditingController();

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blackColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 23.0),
                      child: MyText(
                          data: "Baby Care",
                          font: englishFontBold,
                          size: 30,
                          color: whiteColor),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 15, 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          MyText(
                              data: 'يُرجى إدخال معلومات',
                              font: arabicFont400,
                              size: 30,
                              color: whiteColor),
                          MyText(
                              data: 'تسجيل الدخول',
                              font: arabicFont400,
                              size: 30,
                              color: whiteColor),
                        ],
                      ),
                    ],
                  ),
                ),
                tField(signInEmailController, 'البريد الألكتروني',
                    englishFontMedium, TextDirection.ltr),
                tField(signInPasswordController, 'كلمة المرور',
                    englishFontMedium, TextDirection.ltr),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      BeveledRectangleBorder>(
                                  BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            onPressed: (() {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpPage()));
                            }),
                            child: MyText(
                                data: "إنشاء حساب",
                                font: arabicFont400,
                                size: 25,
                                color: whiteColor)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<BeveledRectangleBorder>(
                                BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      onPressed: (() {
                        signInEmailController.clear();
                        signInPasswordController.clear();
                      }),
                      child: Container(
                        width: 304,
                        height: 43,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: blueColor),
                        child: Center(
                            child: MyText(
                                data: "تسجيل الدخول",
                                font: arabicFont400,
                                size: 20,
                                color: pointEightFiveWhiteColor)),
                      )),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
