
import 'package:baby_care/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'icons/list_icons.dart';
import 'models.dart';
import 'services/doctors_and_filters.dart';
import 'services/filters_and_items_column.dart';
import 'icons/buttom_icons.dart';
import 'icons/search_icon.dart';

import 'services/buttom_button.dart';
import 'services/category_button.dart';
import 'services/list_button.dart';
import 'services/product_info_row.dart';
import 'services/text_field.dart';
import 'services/used_fonts_and_colors.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();
  var familyNameController = TextEditingController();
  static RxBool isProductPage = true.obs;
  static RxBool isDoctorPage = false.obs;
  static RxBool isListPage = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blackColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Obx(() {
                    return Container(
                        child: isListPage.value
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 23.0),
                                                  child: MyText(
                                                      data: "Baby Care",
                                                      font: englishFontBold,
                                                      size: 30,
                                                      color: whiteColor,
                                                      weight: FontWeight.w400,),
                                                ),
                                              ],
                                            ),
                                          ]),
                                    )
                                  ])
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    TextButton(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                BeveledRectangleBorder>(
                                            BeveledRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        )),
                                      ),
                                      onPressed: (() {Get.to(SearchScrean());}),
                                      child: Icon(Search.icon,
                                          color: whiteColor, size: 31),
                                    ),
                                    SizedBox(width: 160),
                                    MyText(data: "Baby Care ", font: englishFontBold, size: 30, color: whiteColor, weight:FontWeight.w500),
                                  ]));
                  }),
                  Obx(() {
                    return Expanded(
                      child: Column(
                          children: isProductPage.value
                              ? ([
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 15, 5),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        reverse: true,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            categoryButton('مفروشات', 10),
                                            categoryButton('حاضنات', 9),
                                            categoryButton('مركبات', 8),
                                            categoryButton('أحذية', 7),
                                            categoryButton(
                                                'أدوات الإستحمام', 6),
                                            categoryButton('أدوات الطعام', 5),
                                            categoryButton('أطعمة', 4),
                                            categoryButton('حفاظات', 3),
                                            categoryButton('ملابس', 2),
                                            categoryButton('مقترحات', 1),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  filtersAndItemsColumn(),
                                ])
                              : isDoctorPage.value
                                  ? ([
                                      filtersAndDoctorsColumn(),
                                    ])
                                  : ([
                                      Column(
                                        children: [
                                          SizedBox(height: 35),
                                          listButton('مشترياتي', ls.cart),
                                          listButton('المفضلة', ls.heart),
                                          listButton('طرق الدفع',
                                              Icons.payment_rounded),
                                          listButton(
                                              'مركز المساعدة', ls.call_center),
                                          listButton('تسجيل الخروج', ls.out),
                                        ],
                                      ),
                                    ])),
                    );
                  }),
                ],
              ),
              Container(
                color: blackColor,
                height: 78,
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buttomButton(buttomIcons.threeLines, 'القائمة', 3,
                          isDoctorPage, isProductPage, isListPage),
                      buttomButton(buttomIcons.doctor, 'الأطباء', 2,
                          isDoctorPage, isProductPage, isListPage),
                      buttomButton(buttomIcons.basket, 'التسوق', 1,
                          isDoctorPage, isProductPage, isListPage),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
