import 'package:baby_care/icons/list_icons.dart';
import 'package:baby_care/pages/favorite_page.dart';
import 'package:baby_care/pages/my_orders_page.dart';
import 'package:baby_care/pages/search_page.dart';
import 'package:baby_care/pages/sign_in_page.dart';
import 'package:baby_care/pages/user_profile_page.dart';
import 'package:baby_care/services/category_button.dart';
import 'package:baby_care/services/filters_and_doctors_column.dart';
import 'package:baby_care/services/filters_and_products_column.dart';
import 'package:baby_care/services/list_button.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';
import '../icons/search_icon.dart';
import '../icons/buttom_icons.dart';
import '../icons/theme_icons.dart';
import '../icons/user_icon.dart';
import '../services/buttom_button.dart';
import '../services/requests.dart';

RxBool isProductPage = true.obs;
RxBool isDoctorPage = false.obs;
RxBool isListPage = false.obs;

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final nameController = TextEditingController();

  final familyNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getSuggestedProducts();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      body: Obx(() {
        return Container(
          color: blackColor.value,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.start, //end,
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
                                                  SizedBox(width: width * 0.04),
                                                  TextButton(
                                                      style: ButtonStyle(
                                                        shape: MaterialStateProperty.all<
                                                                BeveledRectangleBorder>(
                                                            BeveledRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        )),
                                                      ),
                                                      onPressed: (() {
                                                        changeTheme();
                                                      }),
                                                      child: darkTheme.value
                                                          ? Icon(
                                                              ThemeIcons.moon,
                                                              color: whiteColor
                                                                  .value,
                                                              size: 31)
                                                          : Icon(ThemeIcons.sun,
                                                              color: whiteColor
                                                                  .value,
                                                              size: 40)),
                                                  SizedBox(width: width * 0.21),
                                                  // SizedBox(width: width * 0.32),
                                                  // 125),//145),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 23.0),
                                                    child: MyText(
                                                        data: "Baby Care",
                                                        font: englishFontBold,
                                                        size: 30,
                                                        color:
                                                            whiteColor.value),
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
                                        onPressed: (() => Get.to(SearchPage())
                                            // {}
                                            ),
                                        child: Icon(Search.icon,
                                            color: whiteColor.value, size: 31),
                                      ),
                                      const SizedBox(width: 85), //160),
                                      MyText(
                                          data: "Baby Care",
                                          font: englishFontBold,
                                          size: 30,
                                          color: whiteColor.value),
                                    ]));
                    }),
                    Obx(() {
                      return Expanded(
                        child: Column(
                            children: isProductPage.value
                                ? ([
                                    Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 10, 15, 5),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        reverse: true,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            // CategoryButton(text: '??????????????',categoryNumber:  10, ),
                                            // CategoryButton(text: '????????????',categoryNumber:  9),
                                            // CategoryButton(text: '????????????',categoryNumber:  8),
                                            // CategoryButton(text: '??????????',categoryNumber:  7),
                                            // CategoryButton(
                                            //     text: '?????????? ??????????????????',categoryNumber:  6),
                                            // CategoryButton(text: '?????????? ????????????',categoryNumber:  5),
                                            // CategoryButton(text: '??????????',categoryNumber:  4),
                                            // CategoryButton(text: '????????????',categoryNumber:  3),
                                            // CategoryButton(text: '??????????',categoryNumber: 2),
                                            // CategoryButton(text: '??????????????',categoryNumber:  1),
                                            //
                                            categoryButton(
                                              '??????????????',
                                              10,
                                            ),
                                            categoryButton('????????????', 9),
                                            categoryButton('????????????', 8),
                                            categoryButton('??????????', 7),
                                            categoryButton(
                                                '?????????? ??????????????????', 6),
                                            categoryButton('?????????? ????????????', 5),
                                            categoryButton('??????????', 4),
                                            categoryButton('????????????', 3),
                                            categoryButton('??????????', 2),
                                            categoryButton('??????????????', 1),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Obx((){return
                                    filtersAndItemsColumn()
                                    // ;}),
                                  ])
                                : isDoctorPage.value
                                    ? ([
                                        filtersAndDoctorsColumn(),
                                      ])
                                    : ([
                                        Column(
                                          children: [
                                            const SizedBox(height: 25),
                                            listButton('????????????????', ls.cart, () {
                                              Get.to(
                                                  () => const MyOrdersPage());
                                            }),
                                            listButton('??????????????', ls.heart, () {
                                              Get.to(
                                                  () => const FavoritePage());
                                            }),
                                            listButton(
                                                '?????????? ????????????', UserIcon.icon,
                                                () {
                                              Get.to(() =>
                                                  const UserProfilePage());
                                            }),
                                            listButton('???????? ????????????????',
                                                ls.call_center, () {FlutterPhoneDirectCaller.callNumber('07818115142');}),
                                            listButton('?????????? ????????????', ls.out,
                                                () {
                                              Get.to(() => const SignInPage());
                                            }),
                                          ],
                                        ),
                                      ])),
                      );
                    }),
                    Container(
                      color: blackColor.value,
                      height: height * 0.13, //78,
                      width: width, //double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            buttomButton(buttomIcons.threeLines, '??????????????', 3,
                                isDoctorPage, isProductPage, isListPage),
                            buttomButton(buttomIcons.doctor, '??????????????', 2,
                                isDoctorPage, isProductPage, isListPage),
                            buttomButton(buttomIcons.basket, '????????????', 1,
                                isDoctorPage, isProductPage, isListPage),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
