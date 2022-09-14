import 'package:baby_care/Prodect_profile/models_profile.dart';
import 'package:baby_care/config.dart';
import 'package:baby_care/models.dart';
import 'package:baby_care/Prodect_profile/prodect_profil..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class ReviewProdect extends StatefulWidget {
  const ReviewProdect({super.key});

  @override
  State<ReviewProdect> createState() => _ReviewProdectState();
}

class _ReviewProdectState extends State<ReviewProdect> {
  @override
  var size, width, height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        body: Container(
      width: width,
      height: height,
      color: blackColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
        //listview to the all screen 
        child: ListView(
          children: [
            //column off the all screen
            Column(mainAxisAlignment:MainAxisAlignment.spaceAround ,children: [
              //Row contain Iconbutton to back and (نص التصنسفات والمراجعات)
              Row(
                children: [
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MyText(
                          data: 'التصنيفات والمراجعات',
                          font: arabicFont700,
                          size: 25,
                          color: whiteColor),
                      MyText(
                          data: "تيشيرت اليوم الاول",
                          font: arabicFont400,
                          size: 12,
                          color: pointEightFiveWhiteColor),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        Get.off(ProdectProfil());
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                        color: whiteColor,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                //container with padding contain row [image of prodect and rate]
                child: Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                       Column(
                         children: [MyText(data: " ٤,٠", font: arabicFont700, size: 35, color:whiteColor),
                           Row(mainAxisAlignment:MainAxisAlignment.end,
                                        children: [
                                          MyStar(size: 25),
                                          ]),
                         ],
                       ),
                       //widget return image of prodect
                      ImageProdectProfil(image: 'assets/images/shirt2.jpeg',),
                      
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 85),
                //container with listview ,inside listview sub container to comments
                child: Container(
                  color: blackColor,
                  width: width,
                  height: height * 0.45,
                  child: ListView(children: [
                    Column(
                      children: [
                        Container(
                          color:blackColor
                          ,
                          height: height * 0.1,
                          width: width * 0.9,
                          child: Column(crossAxisAlignment:CrossAxisAlignment.end,
                            children: [
                              Row(mainAxisAlignment:MainAxisAlignment.end,
                                children: [
                                  MyStar(size: 15),
                                  
                                  MyText(
                                      data: 'Thamer Hussein',
                                      font: englishFontMedium,
                                      size: 17,
                                      color: whiteColor)
                                ],
                              ),SizedBox(height: 7,),
                            MyText(data: "ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي ", font: arabicFont400, size: 14, color: whiteColor)],
                          ),
                        )
                      ],
                    )
                  ]),
                ),
              ),
          
              TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                        BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  onPressed: (() {}),
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                        color: blueColor, borderRadius: BorderRadius.circular(15)),
                    child: Center(
                        child: MyText(
                            data: " إضافة المنتج الى السلة لمراجعته",
                            font: arabicFont400,
                            size: 22,
                            color: whiteColor)),
                  ))
            ]),
          ],
        ),
      ),
    ));
  }
}
