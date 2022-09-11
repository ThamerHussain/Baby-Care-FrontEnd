// @dart=2.9
import 'package:baby_care/Prodect_profile/prodect_profil..dart';
import 'package:baby_care/reviews.dart';
import 'package:baby_care/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:

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
        // )
        ProdectProfil()
    );
  }
}
        // Scaffold(
        //   body: Container(
        //     color: Colors.grey,
        //   ),
        // )
