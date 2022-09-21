import 'dart:convert';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import '../pages/main_page.dart';

class AuthService {
  static RxBool isBusy = false.obs;

  static signIn({required String email, required String password}) async {
    FocusScope.of(Get.context!).unfocus();
    try {
      Response res = await Dio().post(
        'http://10.0.2.2:8000/api/auth/signin',
        data: jsonEncode({"email": email, "password": password}),
      );
      print('done');

      // Map data = res.data['data'];

      // Account.current = Account(
      //     id: data["Id"],
      //     name: data['Name'],
      //     email: data['Email'],
      //     token: data['Token']
      // );
      // Database.prefs.setString('email', email);
      // Database.prefs.setString('password', password);
      // Get.offAll(MainPage());
      Get.to(MainPage());
    } catch (e) {
      Get.showSnackbar(GetSnackBar(
        title: 'error',
        message: e.toString().substring(0, min(30, e.toString().length)),
        duration: const Duration(seconds: 3),
      ));
    }
  }

  static signUp(
      {required String email,
      required String password,
      required String firstName,
      required String lastName}) async {
    FocusScope.of(Get.context!).unfocus();
    try {
      Response res = await Dio().post(
        'http://10.0.2.2:8000/api/auth/signup',
        data: jsonEncode({
          "first_name": firstName,
          "last_name": lastName,
          "email": email,
          "password1": password,
          "password2": password
        }),
      );
      print('done');

      // Map data = res.data['data'];
      //
      // Account.current = Account(
      //     id: data["Id"],
      //     name: data['Name'],
      //     email: data['Email'],
      //     token: data['Token']
      // );
      // Database.prefs.setString('email', email);
      // Database.prefs.setString('password', password);
      // navigate_to_main();
      Get.to(MainPage());
    } catch (e) {
      Get.showSnackbar(GetSnackBar(
        title: 'error',
        message: e.toString().substring(0, min(30, e.toString().length)),
        duration: const Duration(seconds: 3),
      ));
    }
  }

// static signOut(){
//   // Database.prefs.remove('email');
//   // Database.prefs.remove('password');
//   // Get.offAll(SignInPage());
//   Get.to(SignInPage());
// }
}
