import 'package:baby_care/pages/reviews_page.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/product_profile_info_row.dart';
import '../services/description_container.dart';
import '../services/product_profile_top_icons_row.dart';
import '../services/models_moe.dart';

class ProductProfile extends StatefulWidget {
  const ProductProfile(
      {super.key,
      required this.productTitle,
      required this.productImage,
      required this.productPrice});

  final String productTitle, productImage, productPrice;

  @override
  State<ProductProfile> createState() => _ProductProfileState();
}

class _ProductProfileState extends State<ProductProfile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Obx(() {
        return Container(
          width: width,
          height: height,
          color: blackColor.value,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProductProfileTopIconsRow(productTitle: widget.productTitle),
                  const SizedBox(height: 30),//40),
                  ProductInfoRow(
                      title: widget.productTitle,
                      price: widget.productPrice,
                      imageFromUser: widget.productImage),
                  Expanded(
                      child: SingleChildScrollView(
                          child: DescriptionContainer(
                              text: moeText, title: 'الشرح'))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 90),//100),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.to(ProductReviewPage(
                                  title: widget.productTitle,
                                  price: widget.productPrice,
                                  image: widget.productImage));
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 25,
                              color: whiteColor.value,
                            )),
                        const Spacer(),
                        Column(
                          children: [
                            MyText(
                                data: "التصنيفات والمراجعات ",
                                font: arabicFont700,
                                size: 22,
                                color: pointEightFiveWhiteColor.value),
                            const SizedBox(height: 5),
                            MyText(
                                data: " ٤,٠",
                                font: arabicFont700,
                                size: 48,
                                color: pointEightFiveWhiteColor.value),
                            const MyStar(size: 35)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: TextButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                BeveledRectangleBorder>(BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                          ),
                          onPressed: (() {}),
                          child: Container(
                            width: width * 0.9,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                                color: blueColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                                child: MyText(
                                    data: "إضافة الى السلة",
                                    font: arabicFont400,
                                    size: 20,
                                    color: pointEightFiveWhiteColor.value)),
                          ))),
                ]),
          ),
        );
      }),
    );
  }
}
