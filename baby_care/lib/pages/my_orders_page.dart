import 'package:baby_care/pages/sign_in_page.dart';
import 'package:baby_care/services/order_info_row.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/requests.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:get/get.dart';

final RxList<Map<dynamic, dynamic>> cartData = cartProducts.obs;

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    getCart();
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
                  children: cartData
                      .map<Padding>((Map<dynamic, dynamic> product) =>
                          orderInfoRow(
                              product.values.elementAt(0)['name'],
                              product.values.elementAt(0)['price'],
                              product.values.elementAt(0)['image_url'],
                              product.values.elementAt(0)['description'],
                              // 'assets/images/2.jpg',
                              product['item_qty'],
                            context
                          ))
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
                  // Get.off(const SignInPage());
                  FlutterPhoneDirectCaller.callNumber('07818115142');
                }),
                child: Container(
                  // width: 320,
                  // height: 55,
                  width: width * 0.88,
                  height: height * 0.07,
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
