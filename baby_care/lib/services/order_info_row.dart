import 'package:baby_care/pages/product_profile_page.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Padding orderInfoRow(title, String price, imagePath) {
  RxInt  quantity=1.obs;
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Obx(() {
      return Column(children: [
        Material(
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
                Obx((){return
                Row(

                  children: [
                    TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<BeveledRectangleBorder>(
                                  BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                        ),
                        onPressed: (() {

                          
                          quantity += 1;
                          quantity.toString();
                          
                        }),
                        child: Container(
                          width: 51,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: pointOEightWhiteColor.value),
                          child: Center(
                              child: Icon(Icons.plus_one_outlined,
                                  color: pointNineWhiteColor.value, size: 20)),
                        )),
                    TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<BeveledRectangleBorder>(
                                  BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                        ),
                        onPressed: (() {
                          if(quantity>0){
                          quantity -= 1;
                          quantity.toString();}
                        }),
                        child: Container(
                          width: 31,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: pointOEightWhiteColor.value),
                          child: Center(
                              child: Icon(Icons.exposure_minus_1_outlined,
                                  color: pointNineWhiteColor.value, size: 20)),
                        )),
                  ],
                );}
                ),
                const Spacer(),
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
                    MyText(
                        data: 'الكمية: $quantity',
                        font: arabicFont700,
                        size: 15,
                        color: pointEightFiveWhiteColor.value),
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
        ),
        const SizedBox(height: 20),
      ]);
    }),
  );
}



