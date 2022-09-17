import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../login_page/login_page.dart';
import '../services/models.dart';
import '../services/used_fonts_and_colors.dart';


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
      backgroundColor: blackColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 55),
        child: Container(
            child: Column(
          children: [
            MyIconApp(),
            MyText(
              data: "Baby Care",
              font: englishFontMedium,
              size: 40,
              color: blackColor,
              weight: FontWeight.bold,
            ),
            
            SizedBox(
              height: 25,
            ),
            MyText(
              data: "تطبيق يلبي جميع احتياجات طفلك",
              font: arabicFont400,
              size: 18,
              color: whiteColor,
              weight: FontWeight.w400,
            )
          ],
        )),
      ),
    );
  }
}
