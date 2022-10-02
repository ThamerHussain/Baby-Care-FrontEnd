import 'package:baby_care/pages/sign_in_page.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/user_info.dart';

final RxString userName = ''.obs;
final RxString phoneNumber = ''.obs;
final RxString governorate = ''.obs;

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Obx(() {
      return Scaffold(
        backgroundColor: blackColor.value,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 15, 0.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MyText(
                        color: pointEightFiveWhiteColor.value,
                        data: 'الملف الشخصي',
                        font: arabicFont700,
                        size: 30,
                      ),
                    ),
                    const Spacer(),
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
              const SizedBox(
                height: 110,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Container(
                      // height: 350,
                      // width: 350,
                      height: width * 0.93,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: userProfileCardColor.value,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            userProfileRow('الإسم', 'محمد عبد الرسول'),
                            Divider(
                              color: twentyFourColor.value,
                              height: 20,
                              thickness: 1,
                              indent: 35,
                              endIndent: 35,
                            ),
                            userProfileRow('رقم الهاتف', '07818115142'),
                            Divider(
                              color: twentyFourColor.value,
                              height: 20,
                              thickness: 1,
                              indent: 35,
                              endIndent: 35,
                            ),
                            userProfileRow('المحافظة', 'البصرة')
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -60,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Container(
                        // width: 120,
                        // height: 120,
                        width: width * 0.31,
                        height: height * 0.15,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(60),
                          ),
                          image: DecorationImage(
                            image: AssetImage('assets/images/'
                                '2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
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
                    // width: 320,
                    // height: 55,
                    width: width * 0.9,
                    height: width * 0.14,
                    decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: MyText(
                            data: "تسجيل الخروج",
                            font: arabicFont400,
                            size: 20,
                            color: pointEightFiveWhiteColor.value)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
