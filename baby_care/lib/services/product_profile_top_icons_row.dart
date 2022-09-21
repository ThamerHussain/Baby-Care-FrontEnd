import 'package:get/get.dart';
import '../pages/main_page.dart';
import 'used_fonts_and_colors.dart';
import 'package:flutter/material.dart';

class ProductProfileTopIconsRow extends StatelessWidget {
  ProductProfileTopIconsRow({Key? key}) : super(key: key);

  final RxBool isNotFavorite = true.obs;

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 20, 3, 0),
      child: Obx((){return Row(
        children: [
          IconButton(
            onPressed: () {
              isNotFavorite.value = !isNotFavorite.value;
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
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 30,
                color: whiteColor.value,
              ))
        ],
      );}),
    );
  }
}
