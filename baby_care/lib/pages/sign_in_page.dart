import 'package:baby_care/pages/main_page.dart';
import 'package:baby_care/pages/sign_up_page.dart';
import 'package:baby_care/services/text_field.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/authentication.dart';
import '../services/used_fonts_and_colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  final signInEmailController = TextEditingController();
  final signInPasswordController = TextEditingController();

  @override
  Scaffold build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Obx(() {
        return Container(
          color: blackColor.value,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: ListView(
              children: [
                Form(
                  key: fromKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 23.0),
                              child: MyText(
                                  data: "Baby Care",
                                  font: englishFontBold,
                                  size: 30,
                                  color: whiteColor.value),
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
                                      color: whiteColor.value),
                                  MyText(
                                      data: 'تسجيل الدخول',
                                      font: arabicFont400,
                                      size: 30,
                                      color: whiteColor.value),
                                ],
                              ),
                            ],
                          ),
                        ),
                        tField(signInEmailController, 'البريد الألكتروني',
                            englishFontMedium, TextDirection.ltr,
                            emailValidation: true),
                        tField(signInPasswordController, 'كلمة المرور',
                            englishFontMedium, TextDirection.ltr,
                            secure: true, passwordValidation: true),
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
                                              builder: (context) =>
                                                  const SignUpPage()));
                                    }),
                                    child: MyText(
                                        data: "إنشاء حساب",
                                        font: arabicFont400,
                                        size: 25,
                                        color: whiteColor.value)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: TextButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        BeveledRectangleBorder>(
                                    BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                              ),
                              onPressed: (() async {
                                if (fromKey.currentState!.validate()) {
                                  // AuthService.signIn(
                                  //     email: signInEmailController.text,
                                  //     password: signInPasswordController.text);
                                  // signInEmailController.clear();
                                  // signInPasswordController.clear();
                                  Get.off(MainPage());
                                }
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
                                        color: pointEightFiveWhiteColor.value)),
                              )),
                        )
                      ]),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
