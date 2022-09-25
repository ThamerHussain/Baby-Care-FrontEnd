import 'dart:async';
import 'package:baby_care/pages/sign_up_page.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/splash_icons.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        (() => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: ((context) => const SignUpPage())))));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Obx(() {
      return Scaffold(
        backgroundColor: blackColor.value,
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SplashIcon1(),
                //const SplashIcon2(),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: MyText(
                      data: "Baby Care",
                      font: englishFontBold,
                      size: 40,
                      color: whiteColor.value),
                ),
                MyText(
                    data: "تطبيق واحد يلبي جميع إحتياجات طفلك",
                    font: arabicFont400,
                    size: 18,
                    color: whiteColor.value)
              ],
            )),
      );
    });
  }
}
