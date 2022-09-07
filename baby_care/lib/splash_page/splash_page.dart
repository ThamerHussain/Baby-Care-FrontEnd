import 'dart:async';

import 'package:baby_care/config/config.dart';
import 'package:baby_care/login_page/login_page.dart';
import 'package:baby_care/models/models.dart';
import 'package:baby_care/models/models.dart';
import 'package:baby_care/config/config.dart';
import 'package:baby_care/login_page/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:baby_care/config/config.dart';

class Spalsh extends StatefulWidget {
  const Spalsh({super.key});

  @override
  State<Spalsh> createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
   @override
   void initState() {
     super.initState();
     Timer(
         Duration(seconds: 3),
         (() => Navigator.pushReplacement(
             context, MaterialPageRoute(builder: ((context) => RegisterPage())))));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primeryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 55),
        child: Container(
            child: Column(
          children: [
            MyIconApp(),
            MyText(
              data: "Baby Care",
              font: englishFont,
              size: 40,
              color: fontSplashColor,
              weight: FontWeight.bold,
            ),
            
            SizedBox(
              height: 25,
            ),
            MyText(
              data: "تطبيق يلبي جميع احتياجات طفلك",
              font: arabicFont,
              size: 18,
              color: fonthintColor,
              weight: FontWeight.w400,
            )
          ],
        )),
      ),
    );
  }
}
