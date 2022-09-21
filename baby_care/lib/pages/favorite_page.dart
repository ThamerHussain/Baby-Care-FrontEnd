import 'package:baby_care/services/filters_and_items_column.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/product_info_row.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    children: productsAndFilters.value[0]
                        .map<Padding>((List<String> product) =>
                            productInfoRow(product[0], product[1], product[2]))
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
