import 'package:baby_care/Prodect_profile/prodect_profil..dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/get_rx.dart';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'filters_and_items_column.dart';
import 'used_fonts_and_colors.dart';
import 'my_text.dart';

Padding productInfoRow(title, String price, imagePath) {
 
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    
      child: Column(
          children: [
            Material(color:Colors.black,child:InkWell(splashColor:Colors.grey,child:Row(
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
                    child: 
                      Container(
                        width: 51,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: pointOEightWhiteColor),
                        child: Center(
                            child: Icon(Icons.add_shopping_cart_outlined,
                                color: pointNineWhiteColor, size: 15)),
                      ),
                    ),
                SizedBox(width: 80),
                Column(
                  children: [
                    MyText(
                        data: title,
                        font: arabicFont700,
                        size: 15,
                        color: pointEightFiveWhiteColor),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: MyText(
                          data: '$price IQD',
                          font: arabicFont700,
                          size: 15,
                          color: pointEightFiveWhiteColor),
                    ),
                  
                  ],
                ),
                SizedBox(width: 5),
                SizedBox(
                  height: 64,
                  width: 64,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        imagePath,
                        width: 64,
                        height: 64,
                      )),
                ),
              ],
            )
            ,onTap: (() {Get.to(ProdectProfil(productTitle: title, productImgae: imagePath, productPrice: price));
              
            }),)
            ),
            SizedBox(height: 20),
          ],
        ),
        
      
      
    );
}
