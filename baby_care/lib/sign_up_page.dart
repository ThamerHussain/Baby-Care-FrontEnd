
import 'package:baby_care/config.dart';
import 'package:baby_care/models.dart';
import 'package:baby_care/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'config.dart';
import 'models/text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var familyNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blackColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<BeveledRectangleBorder>(
                              BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        onPressed: (() {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => SignInPage()));
                        }),
                        child: MyText(
                            data: "لدي حساب",
                            font: arabicFont400,
                            size: 25,
                            color: whiteColor)),
                    SizedBox(width: 100),
                    MyText(
                        data: "Baby Care",
                        font: englishFontBold,
                        size: 30,
                        color: whiteColor),
                  ],
                ),
                // SizedBox(
                //   height: 30,
                // ),
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
                              data: 'التسجيل',
                              font: arabicFont400,
                              size: 30,
                              color: whiteColor),
                          //cause when we use one text widget
                          // to display the wrapped sentence,
                          // it will not appear properly
                        ],
                      ),
                    ],
                  ),
                ),

                // SizedBox(height: 100),


                tField(emailController,
                    'البريد الألكتروني',
                    englishFontMedium,
                    TextDirection.ltr),
                tField(passwordController,
                    'كلمة المرور',
                    englishFontMedium,
                    TextDirection.ltr),
                tField(nameController,
                    'الإسم الأول',
                    englishFontMedium,
                    TextDirection.rtl),
                tField(familyNameController,
                    'إسم العائلة',
                    englishFontMedium,
                    TextDirection.rtl),

                // defaultFormField(
                //     controller: emailController,
                //     hinttext: "ادخل بريدك الالكتروني",
                //     labletext: "البريد الالكتروني"),
                // defaultFormField(
                //     controller: passwordController,
                //     hinttext: "ادخل رمزك السري",
                //     labletext: "الرمز  السري"),
                // defaultFormField(
                //     controller: nameController,
                //     hinttext: "ادخل اسمك",
                //     labletext: "الاسم"),
                // defaultFormField(
                //     controller: familyNameController,
                //     hinttext: "ادخل الاسم",
                //     labletext: "اسم العائلة"),

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
                        emailController.clear();
                        passwordController.clear();
                        nameController.clear();
                        familyNameController.clear();
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
                                color: pointEightFiveWhiteColor
                            )),
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