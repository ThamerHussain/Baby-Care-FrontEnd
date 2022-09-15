
import 'package:baby_care/main_page.dart';
import 'package:baby_care/services/product_profile_info_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../services/used_fonts_and_colors.dart';

class iconButtonProdectPart1 extends StatefulWidget {
  const iconButtonProdectPart1({super.key});

  @override
  State<iconButtonProdectPart1> createState() => _iconButtonProdectPart1State();
}

class _iconButtonProdectPart1State extends State<iconButtonProdectPart1> {
  RxBool flageFavorite =true.obs;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
                  children: [
                    Obx( () {
                        return IconButton(
                            onPressed: () {flageFavorite.value=!flageFavorite.value;
                            },
                           icon:flageFavorite.value? Icon(
                                      Icons.favorite_border,
                                      size: 35,
                                      color: whiteColor,
                                    ):Icon(Icons.favorite,size: 35,color: whiteColor,));
                      }
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () =>Get.off(MainPage()),
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 35,
                          color: whiteColor,
                        ))
                  ],
                
              ),
    );
  }

  
}

