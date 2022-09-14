import 'dart:async';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/splash_icons.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:baby_care/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        Duration(seconds: 3),
        (() => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: ((context) => SignUpPage())))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SplashIcon1(),
              // SplashIcon2(),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: MyText(
                    data: "Baby Care",
                    font: englishFontBold,
                    size: 40,
                    color: whiteColor),
              ),
              MyText(
                  data: "تطبيق واحد يلبي جميع إحتياجات طفلك",
                  font: arabicFont400,
                  size: 18,
                  color: whiteColor)
            ],
          )),
    );
  }
}
