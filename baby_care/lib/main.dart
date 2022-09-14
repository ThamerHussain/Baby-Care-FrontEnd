import 'package:baby_care/product_profile_page.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:baby_care/main_page.dart';
import 'package:baby_care/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:baby_care/splash_page.dart';
import 'doctor_profile_page.dart';
import 'sign_up_page.dart';
import 'services/filter_button.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: blackColor,
          body:

              // SplashPage()

              MainPage()

          // ProductProfile()

          // DoctorProfilePage()

          // Center(
          //   child: filterButton(items),
          // )

          ,
        ));
  }
}
