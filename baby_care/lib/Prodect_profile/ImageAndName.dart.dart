import 'package:baby_care/Prodect_profile/models_profile.dart';
import 'package:baby_care/config.dart';
import 'package:baby_care/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class profilProdectPart2 extends StatelessWidget {
  const profilProdectPart2({super.key,required this.imageFromUser});
final String imageFromUser;
 
  @override
  Widget build(BuildContext context) {
     var size, width, height;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: width * 0.4,
                      height: height * 0.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          MyText(
                              data: "تيشيرت اليوم الاول",
                              font: arabicFont700,
                              size: 23,
                              color: whiteColor),
                          SizedBox(
                            height: 30,
                          ),
                          MyText(
                              data: "3,500IQD",
                              font: englishFontMedium,
                              size: 23,
                              color: whiteColor),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MyStar(
                                size: 20,
                              )
                            ],
                          )
                        ],
                      )),
                  ImageProdectProfil(image: imageFromUser,)
                ],
              ),
            );
  }
}