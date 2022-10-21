import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'models_moe.dart';

class ProductInfoRow extends StatelessWidget {
  const ProductInfoRow(
      {super.key,
      required this.imageFromUser,
      required this.title,
      required this.price,
      required this.stars});

  final String imageFromUser, title, price;
  final int stars;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    print('$imageFromUser..................................................................');
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                            const SizedBox(height: 0),
                            RatingBar.builder(
                              initialRating: 4,

                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemSize: 23,
                              textDirection: TextDirection.rtl,
                              ignoreGestures: true,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                              itemBuilder: (context, _) => Icon(

                                Icons.star_rounded,
                                color: pointEightFiveWhiteColor.value,
                              ),
                              unratedColor: pointThreeWhiteColor.value,
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ],
                        );
                      }),
                    ),
                  )
                ]),
          ),
          const SizedBox(width: 10), //20),
          ImageProductProfile(image: imageFromUser)
        ],
      ),
    );
  }
}
