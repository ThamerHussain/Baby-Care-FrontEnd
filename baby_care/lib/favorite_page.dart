import 'package:baby_care/doctor_profile/dovtor_profile.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key, required this.name, required this.price, required this.image});
final String name,price,image;
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      children: [
        Material(
          color: blackColor,
          child: InkWell(
            splashColor: pointEightFiveWhiteColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                          BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                    ),
                    onPressed: (() {}),
                    child: Container(
                      width: 51,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: pointOEightWhiteColor),
                      child: Center(
                          child: Icon(Icons.call,
                              color: pointNineWhiteColor, size: 15)),
                    )),
                SizedBox(width: 80),
                Column(
                  children: [
                    MyText(
                        data: widget.name,
                        font: arabicFont700,
                        size: 15,
                        color: pointEightFiveWhiteColor),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: MyText(
                          data: widget.price,
                          font: arabicFont700,
                          size: 15,
                          color: pointEightFiveWhiteColor),
                    ),
                    
                  ],
                ),
                SizedBox(width: 5),
                SizedBox(
                  height: 64,
                  width: 64,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                      widget.image,
                        width: 64,
                        height: 64,
                      )),
                ),
              ],
            ),
            onTap: (() => Get.to(DoctorProfile(
                  doctorImage: widget.image,
                  doctorName: widget.name,
                  doctorSpcialty: widget.price,
                ))),
          ),
        ),
        SizedBox(height: 20),
      ],
    ),
  );;
  }
}