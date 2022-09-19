import 'package:baby_care/pages/product_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'used_fonts_and_colors.dart';
import 'my_text.dart';

Padding productInfoRow(title, String price, imagePath) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(children: [
      Obx(() {
        return Material(
          color: blackColor.value,
          child: InkWell(
            splashColor: grayColor,
            onTap: (() {
              Get.to(ProductProfile(
                  productTitle: title,
                  productImage: imagePath,
                  productPrice: price));
            }),
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
                          color: pointOEightWhiteColor.value),
                      child: Center(
                          child: Icon(Icons.add_shopping_cart_outlined,
                              color: pointNineWhiteColor.value, size: 15)),
                    )),
                const Spacer(),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MyText(
                            data: title,
                            font: arabicFont700,
                            size: 15,
                            color: pointEightFiveWhiteColor.value),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 5, 3),
                          child: MyText(
                              data: '$price IQD',
                              font: arabicFont700,
                              size: 15,
                              color: pointEightFiveWhiteColor.value),
                        ),
                      ],
                    ),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 20,
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
                ),
                const SizedBox(width: 15),
                SizedBox(
                  height: 64,
                  width: 64,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        imagePath,
                        width: 64,
                        height: 64,
                      )),
                ),
              ],
            ),
          ),
        );
      }),
      const SizedBox(height: 20),
    ]),
  );
}
