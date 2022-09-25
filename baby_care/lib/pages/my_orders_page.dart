import 'package:baby_care/pages/sign_in_page.dart';
import 'package:baby_care/services/order_info_row.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
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
                          data: 'مُشترياتي',
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: myOrdersData
                      .map<Padding>((List<String> product) => orderInfoRow(
                          product[0], product[1], product[2], product[3]))
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                      BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
                ),
                onPressed: (() {
                  Get.off(const SignInPage());
                }),
                child: Container(
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: MyText(
                          data: "إتمام الشراء",
                          font: arabicFont400,
                          size: 20,
                          color: pointEightFiveWhiteColor.value)),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
