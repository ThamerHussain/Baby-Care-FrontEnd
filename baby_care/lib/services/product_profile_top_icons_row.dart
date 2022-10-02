import 'package:baby_care/pages/favorite_page.dart';
import 'package:baby_care/services/requests.dart';
import 'package:get/get.dart';
import '../pages/main_page.dart';
import 'used_fonts_and_colors.dart';
import 'package:flutter/material.dart';

class ProductProfileTopIconsRow extends StatelessWidget {
  ProductProfileTopIconsRow({Key? key, required this.productTitle})
      : super(key: key);

  final String productTitle;
  final RxBool isNotFavorite = true.obs;

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 20, 3, 0),
      child: Obx(() {
        return Row(
          children: [
            IconButton(
              onPressed: () {
                isNotFavorite.value = !isNotFavorite.value;
                isNotFavorite.value
                    ? removeFromFavorite(productTitle)
                    : addToFavorite(productTitle);

                // favoriteData.refresh();
              },
              icon: Obx(() {
                return isNotFavorite.value
                    ? Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: whiteColor.value,
                      )
                    : Icon(
                        Icons.favorite,
                        size: 30,
                        color: whiteColor.value,
                      );
              }),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {
                  getFavorite();
                  Get.back();
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: whiteColor.value,
                ))
          ],
        );
      }),
    );
  }
}
