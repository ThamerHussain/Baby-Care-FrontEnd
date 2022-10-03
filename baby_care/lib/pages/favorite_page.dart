import 'package:baby_care/services/filters_and_products_column.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/product_info_row.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/requests.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final RxList<Map<dynamic, dynamic>> favoriteData = favoriteTProducts.obs;
class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(favoriteData);
    getFavorite();
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Obx(() {
      return Scaffold(
        backgroundColor: blackColor.value,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 15, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyText(
                          color: pointEightFiveWhiteColor.value,
                          data: 'المفضّلة',
                          font: arabicFont700,
                          size: 24,
                        ),
                        const SizedBox(height: 45),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: pointEightFiveWhiteColor.value,
                    ),
                  ),
                ],
              ),
            ),
            Obx(() {
              return Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: favoriteData

                        .map<Padding>((Map<dynamic, dynamic> product) =>
                            productInfoRow(
                        product.values.elementAt(0)['name'],
                      product.values.elementAt(0)['price'],
                      product.values.elementAt(0)['image_url'],
                      // 'assets/images/2.jpg',
                      product.values.elementAt(0)['stars'],
                      product.values.elementAt(0)['description'],

                    ))
                        .toList(),
                  ),
                ),
              );
            }),
          ],
        ),
      );
    });
  }
}
