
// @dart=2.9

import 'package:baby_care/search_screen.dart';
import 'package:baby_care/sign_in_page.dart';
import 'package:baby_care/signin_page/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:splashscreen/splashscreen.dart';

import 'Prodect_profile/prodect_profil..dart';
import 'doctor_profile_page.dart';

import 'main_page.dart';
import 'services/used_fonts_and_colors.dart';
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
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,

        home:MainPage(),

        // SplashScreen(
        //   seconds: 20,
        //   navigateAfterSeconds:Text('haaaaaaaaaaaaaa'),
        //   title: new Text(
        //     'SplashScreen Example',
        //     style: new TextStyle(
        //         fontWeight: FontWeight.bold,
        //         fontSize: 20.0,
        //         color: Colors.white),
        //   ),
        //
        //   backgroundColor: Colors.lightBlue[200],
  
 
  

    // GetMaterialApp
        // )
        
    );

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
        );

  }
}
