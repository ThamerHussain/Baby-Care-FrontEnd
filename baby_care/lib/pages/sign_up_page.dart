import 'package:baby_care/pages/sign_in_page.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/authentication.dart';
import '../services/text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final familyNameController = TextEditingController();

  @override
  Scaffold build(BuildContext context) {
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
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
                                              const SignInPage()));
                                }),
                                child: MyText(
                                    data: "لدي حساب",
                                    font: arabicFont400,
                                    size: 25,
                                    color: whiteColor.value)),
                            const SizedBox(width: 100),
                            MyText(
                                data: "Baby Care",
                                font: englishFontBold,
                                size: 30,
                                color: whiteColor.value),
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
                                      data: 'التسجيل',
                                      font: arabicFont400,
                                      size: 30,
                                      color: whiteColor.value),
                                  //cause when we use one text widget
                                  // to display the wrapped sentence,
                                  // it will not appear properly
                                ],
                              ),
                            ],
                          ),
                        ),
                        tField(emailController, 'البريد الألكتروني',
                            englishFontMedium, TextDirection.ltr,
                            emailValidation: true),
                        tField(passwordController, 'كلمة المرور',
                            englishFontMedium, TextDirection.ltr,
                            secure: true, passwordValidation: true),
                        tField(nameController, 'الإسم الأول', englishFontMedium,
                            TextDirection.rtl,
                            firstNameValidation: true),
                        tField(familyNameController, 'إسم العائلة',
                            englishFontMedium, TextDirection.rtl,
                            lastNameValidation: true),
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
                              onPressed: (() {
                                if (fromKey.currentState!.validate()) {
                                  AuthService.signUp(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      firstName: nameController.text,
                                      lastName: familyNameController.text);
                                  // emailController.clear();
                                  // passwordController.clear();
                                  // nameController.clear();
                                  // familyNameController.clear();
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
                                        data: "إنشاء حساب",
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
