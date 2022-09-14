// @dart=2.9
import 'package:baby_care/Prodect_profile/prodect_profil..dart';
import 'package:baby_care/doctor_profile/dovtor_profile.dart';
import 'package:baby_care/reviews.dart';
import 'package:baby_care/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'sign_up_page.dart';

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
        home: ProdectProfil(),

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
  }
}
        // Scaffold(
        //   body: Container(
        //     color: Colors.grey,
        //   ),
        // )
