import 'used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class ProductProfileTopIconsRow extends StatelessWidget {
  ProductProfileTopIconsRow({Key? key}) : super(key: key);

  final RxBool isNotFavorite = true.obs;

  @override
  Padding build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(3, 20, 3, 0),
      child: Row(
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
                      color: whiteColor,
                    )
                  : Icon(
                      Icons.favorite,
                      size: 30,
                      color: whiteColor,
                    );
            }),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 30,
                color: whiteColor,
              ))
        ],
      ),
    );
  }
}
