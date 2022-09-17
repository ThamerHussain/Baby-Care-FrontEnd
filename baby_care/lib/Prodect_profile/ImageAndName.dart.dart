
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models.dart';
import '../services/used_fonts_and_colors.dart';
import 'models_profile.dart';

class profilProdectPart2 extends StatelessWidget {
  const profilProdectPart2({super.key,required this.imageFromUser, required this.tital, required this.pricee});
final String imageFromUser,tital,pricee;
 
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
                              data: tital,
                              font: arabicFont700,
                              size: 23,
                              color: whiteColor,weight: FontWeight.w400,),
                          SizedBox(
                            height: 30,
                          ),
                            MyText(data: pricee,
                              font: englishFontMedium,
                              size: 23,
                              color: whiteColor,
                              weight: FontWeight.w400),
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