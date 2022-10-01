import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'models_moe.dart';

class ProductInfoRow extends StatelessWidget {
  const ProductInfoRow(
      {super.key,
      required this.imageFromUser,
      required this.title,
      required this.price});

  final String imageFromUser, title, price;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.4,
            height: height * 0.2,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Obx(() {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: Text(title,
                                      style: TextStyle(
                                          color: whiteColor.value,
                                          fontSize: 24,
                                          fontFamily: arabicFont700),
                                      textAlign: TextAlign.end),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            MyText(
                                data: price,
                                font: englishFontMedium,
                                size: 20,
                                color: whiteColor.value),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [MyStar(size: 23)],
                            )
                          ],
                        );
                      }),
                    ),
                  )
                ]),
          ),
           SizedBox(width: 10),
          ImageProductProfile(image: imageFromUser)
        ],
      ),
    );
  }
}
