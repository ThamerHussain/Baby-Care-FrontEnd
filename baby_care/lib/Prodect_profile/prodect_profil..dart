import 'package:baby_care/services/models_moe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../models.dart';
import '../reviews.dart';
import '../services/used_fonts_and_colors.dart';
import 'ImageAndName.dart.dart';
import 'discreption.dart';
import 'iconButton_part1.dart';

class ProdectProfil extends StatefulWidget {
  const ProdectProfil(
      {super.key,
      required this.productTitle,
      required this.productImgae,
      required this.productPrice});
  final String productTitle, productImgae, productPrice;
  @override
  State<ProdectProfil> createState() => _ProdectProfilState();
}

class _ProdectProfilState extends State<ProdectProfil> {
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconButtonProdectPart1(),
                SizedBox(
                  height: 40,
                ),
                profilProdectPart2(
                  tital: widget.productTitle,
                  pricee: widget.productPrice,
                  imageFromUser: widget.productImgae,
                ),
                Expanded(
                    child: SingleChildScrollView(
                        child: DiscreptionContainer(
                            discreptions: "الشرح",
                            text:
                                'والله والله والله وانت مامحلفني هذا التيشيرت الا يخبل خاماية غير تركي ماركة فول ليكرا تشك شك شنو ثلج  بالصيف ونار بالشتا ولاعبالك ب3 وونص اخذهة وبيهة ضمان شهرين لا تنشك ولا تنفتك غير اصلية مال عمك اخذهة وخل ابنك يتهنة'))),
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.to(ReviewProdect);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 25,
                            color: whiteColor,
                          )),
                      Spacer(),
                      Column(
                        children: [
                          MyText(
                            data: "التصنيفات والمراجعات ",
                            font: arabicFont700,
                            size: 22,
                            color: whiteColor,
                            weight: FontWeight.w400,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          MyText(
                            data: " ٤,٠",
                            font: arabicFont700,
                            size: 35,
                            color: whiteColor,
                            weight: FontWeight.w400,
                          ),
                          MyStar(size: 35)
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<BeveledRectangleBorder>(
                                  BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                        ),
                        onPressed: (() {}),
                        child: Container(
                          width: width * 0.9,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: MyText(
                            data: "إضافة الى السلة",
                            font: arabicFont400,
                            size: 25,
                            color: whiteColor,
                            weight: FontWeight.w400,
                          )),
                        ))),
              ]),
        ),
      ),
    );
  }
}

//  Widget BuildiconButton({required Function?onPressed,required Icon})
//  =>IconButton(onPressed: (){}, icon: Icon);


