import 'package:baby_care/services/category_button.dart';
import 'package:baby_care/services/doctor_info_row.dart';
import 'package:baby_care/services/product_info_row.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'main_page.dart';

RxList<Map<dynamic, dynamic>> dataItemsForSearch = clothesProducts.obs;

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  final RxString searchString = ''.obs;
  final Rx<String> hintText = isProductPage.value
      ? selectedCategory.value == 1
          ? 'البحث عن المنتجات'.obs
          : selectedCategory.value == 2
              ? 'البحث عن الملابس'.obs
              : selectedCategory.value == 3
                  ? 'البحث عن الحفاظات'.obs
                  : selectedCategory.value == 4
                      ? 'البحث عن الطعام'.obs
                      : selectedCategory.value == 5
                          ? 'البحث عن أدوات الطعام'.obs
                          : selectedCategory.value == 6
                              ? 'البحث عن أدوات الإستحمام'.obs
                              : selectedCategory.value == 7
                                  ? 'البحث عن الأحذية'.obs
                                  : selectedCategory.value == 8
                                      ? 'البحث عن المَركَبات'.obs
                                      : selectedCategory.value == 9
                                          ? 'البحث عن الحاضنات'.obs
                                          : 'البحث عن المفروشات'.obs
      : 'البحث عن الأطباء'.obs;


  // isProductPage.value
  //     ? selectedCategory.value == 1
  //         ? suggestionsProducts.obs
  //         : selectedCategory.value == 2
  //             ? clothesProducts.obs
  //             : selectedCategory.value == 3
  //                 ? diapersProducts.obs
  //                 : selectedCategory.value == 4
  //                     ? foodProducts.obs
  //                     : selectedCategory.value == 5
  //                         ? foodToolProducts.obs
  //                         : selectedCategory.value == 6
  //                             ? showerToolProducts.obs
  //                             : selectedCategory.value == 7
  //                                 ? shoesProducts.obs
  //                                 : selectedCategory.value == 8
  //                                     ? vehiclesProducts.obs
  //                                     : selectedCategory.value == 9
  //                                         ? containersProducts.obs
  //                                         : furnitureProducts.obs
  //     : doctors.obs;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(body: Obx(() {
      return Container(
          color: blackColor.value,
          child: Padding(
              padding: const EdgeInsets.only(top: 35, right: 5, left: 5),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: TextField(
                                textAlign: TextAlign.start,
                                textDirection: TextDirection.rtl,
                                cursorColor: blueColor,
                                maxLines: 1,
                                minLines: 1,
                                style: TextStyle(
                                    fontSize: 30,
                                    fontFamily: arabicFont400,
                                    color: pointEightFiveWhiteColor.value),
                                decoration: InputDecoration(
                                  filled: false,
                                  fillColor: pointOEightWhiteColor.value,
                                  hintText: hintText.value,
                                  suffix: const SizedBox(width: 5),
                                  hintTextDirection: TextDirection.rtl,
                                  hintStyle: TextStyle(
                                      fontSize: 30,
                                      fontFamily: arabicFont400,
                                      color: pointThreeWhiteColor.value),
                                  border: InputBorder.none,
                                ),
                                onChanged: ((value) {
                                  searchString.value = value;
                                }),
                              ),
                            ),
                            IconButton(
                                onPressed: () => Get.back(),
                                icon: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 30,
                                  color: whiteColor.value,
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
                          child: Container(
                            color: pointThreeWhiteColor.value,
                            width: double.maxFinite,
                            height: 1,
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Obx(() {
                          return Column(
                              children: searchString.value.isNotEmpty
                                  ? !isDoctorPage.value
                                      ? [
                                          for (var product
                                              in dataItemsForSearch.value)
                                            if (product.values.elementAt(0).contains(
                                                searchString.value)) ...[
                                              productInfoRow(

                          product.values.elementAt(0),
                          product.values.elementAt(1),
                          product.values.elementAt(2),
                          // 'assets/images/2.jpg',
                          product.values.elementAt(3),
                          product.values.elementAt(4),



                                              ),
                                            ]
                                        ]
                                      : [
                                          for (var doctor
                                              in dataItemsForSearch.value)
                                            if (doctor.values.elementAt(0).contains(
                                                searchString.value)) ...[
                                              doctorInfoRow(doctor.values.elementAt(0),
                                                  doctor.values.elementAt(1), doctor.values.elementAt(2), doctor.values.elementAt(3)),
                                            ]
                                        ]
                                  : []);
                        }),
                      ),
                    ),
                  ])));
    }));
  }
}
