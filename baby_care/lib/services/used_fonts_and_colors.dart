import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get/get.dart';

//used fonts 👇👇👇👇👇👇
//--------------------------------------------------------------------------------------------------
//description content, comment, comment date, doctor specialty, doctor availability time
//cv content, appointment booking text, list page options text, quantity text
//make order text, hint text, please text, sign up text, login text
//login navigator text, sign up navigator text,
const String arabicFont400 = 'SamsungOneArabic_400';
//category text, product name, price, bottom text, filter text, description title
//rate title, rate number, add to basket text, commenter, chart number
//sub rate product title, doctor name, cv title, doctor availability title
//my orders, increase and decrease product text, favorite text
const String arabicFont700 = 'SamsungOneArabic_700';
const String englishFontMedium = 'SamsungSans-Medium';
//baby care,
const String englishFontBold = 'SamsungSans-Bold';
//--------------------------------------------------------------------------------------------------
RxBool darkTheme = true.obs;
//used colors 👇👇👇👇👇👇
//--------------------------------------------------------------------------------------------------
//main background, unselected Category Background, unselected Category Background
//bottom background, favorite icon,
final Rx<Color> blackColor = Colors.black.obs;
//baby care, selected Category text, selected filter text, search icon, selected bottom icon
//selected bottom text, arrow icons, bar chart rate number, call icon, sign up navigator text
//please text, login navigator text,
final Rx<Color> whiteColor = Colors.white.obs;
//unselected bottom icon, unselected Category Text, unselected bottom icon, unselected bottom text
final Rx<Color> halfWhiteColor = Colors.white.withOpacity(0.5).obs;
//unselected Star, hint text
final Rx<Color> pointThreeWhiteColor = Colors.white.withOpacity(0.3).obs;
//product name, price, selected star, Shopping basket, description title, description content
//add to basket text, commenter, comment, comment date, doctor name, doctor specialty
//doctor availability time, doctor availability title, doctor cv title, doctor cv
//appointment booking text, list page options text and icon, my orders title,
//increase and decrease product text, quantity text, make order text
//login text, signup text,
final Rx<Color> pointEightFiveWhiteColor = Colors.white.withOpacity(0.85).obs;
//selected Category Background, selected filter Background, Shopping basket background
//rate title, sub rate product title, rate number, call icon background
//list page options background, increase and decrease product background,// final Color oneFourColor = Color(0xff141414);
final Rx<Color> pointOEightWhiteColor = Colors.white
    .withOpacity(0.08)
    .obs; // final Color oneFourColor = Color(0xff141414);
//selected star 2,
const Color orangeColor = Color(0xffFF701F);
//add to basket background, appointment booking background, make order background
//login background, signup background
final Color blueColor = const Color(0xff1F83F8).withOpacity(0.98);
//bar chart line fill,
final Rx<Color> pointNineWhiteColor = Colors.white.withOpacity(0.9).obs;
//bar chart,
final Color lightBlue = Color.fromRGBO(31, 131, 248, 0.98);
final Color greyColor = Color.fromARGB(64, 92, 100, 116);

//--------------------------------------------------------------------------------------------------
final Rx<Color> pointFifteenWhiteColor = Colors.white.withOpacity(0.15).obs;
final Rx<Color> twentyFourColor = Colors.white24.obs;
Rx<dynamic> chartWhite = charts.MaterialPalette.white.obs;
final Rx<Color> shadedGrayColor = Colors.grey.shade800.obs;
final Rx<Color> userProfileCardColor = const Color(0xff141414).obs;
const Color grayColor = Colors.grey;
const Color redColor = Colors.red;
//--------------------------------------------------------------------------------------------------
changeTheme() {
  darkTheme.value = !darkTheme.value;
  blackColor.value = darkTheme.value ? Colors.black : Colors.white;
  whiteColor.value = darkTheme.value ? Colors.white : Colors.black;
  halfWhiteColor.value = darkTheme.value
      ? Colors.white.withOpacity(0.5)
      : Colors.black.withOpacity(0.5);
  pointThreeWhiteColor.value = darkTheme.value
      ? Colors.white.withOpacity(0.3)
      : Colors.black.withOpacity(0.3);
  pointEightFiveWhiteColor.value = darkTheme.value
      ? Colors.white.withOpacity(0.85)
      : Colors.black.withOpacity(0.85);
  pointOEightWhiteColor.value = darkTheme.value
      ? Colors.white.withOpacity(0.08)
      : Colors.black.withOpacity(0.08);
  pointNineWhiteColor.value = darkTheme.value
      ? Colors.white.withOpacity(0.9)
      : Colors.black.withOpacity(0.9);
  pointFifteenWhiteColor.value = darkTheme.value
      ? Colors.white.withOpacity(0.15)
      : Colors.black.withOpacity(0.15);
  twentyFourColor.value = darkTheme.value ? Colors.white24 : Colors.black26;
  chartWhite.value = darkTheme.value
      ? charts.MaterialPalette.white
      : charts.MaterialPalette.black;
  shadedGrayColor.value = darkTheme.value ? Colors.grey.shade800 : Colors.white;
  userProfileCardColor.value =
      darkTheme.value ? const Color(0xff141414) : Colors.black12;
}













////used fonts 👇👇👇👇👇👇
// //--------------------------------------------------------------------------------------------------
// //description content, comment, comment date, doctor specialty, doctor availability time
// //cv content, appointment booking text, list page options text, quantity text
// //make order text, hint text, please text, sign up text, login text
// //login navigator text, sign up navigator text,
// const String arabicFont400 = 'SamsungOneArabic_400';
// //category text, product name, price, bottom text, filter text, description title
// //rate title, rate number, add to basket text, commenter, chart number
// //sub rate product title, doctor name, cv title, doctor availability title
// //my orders, increase and decrease product text, favorite text
// const String arabicFont700 = 'SamsungOneArabic_700';
// const String englishFontMedium = 'SamsungSans-Medium';
// //baby care,
// const String englishFontBold = 'SamsungSans-Bold';
// //--------------------------------------------------------------------------------------------------
// RxBool darkTheme = true.obs;
// //used colors 👇👇👇👇👇👇
// //--------------------------------------------------------------------------------------------------
// //main background, unselected Category Background, unselected Category Background
// //bottom background, favorite icon,
// final Rx<Color> blackColor = darkTheme.value ? Colors.black.obs : Colors.white.obs;
// //baby care, selected Category text, selected filter text, search icon, selected bottom icon
// //selected bottom text, arrow icons, bar chart rate number, call icon, sign up navigator text
// //please text, login navigator text,
// final Rx<Color> whiteColor = darkTheme.value ? Colors.white.obs : Colors.black.obs;
// //unselected bottom icon, unselected Category Text, unselected bottom icon, unselected bottom text
// final Rx<Color> halfWhiteColor = darkTheme.value ? Colors.white.withOpacity(0.5).obs : Colors.black.withOpacity(0.5).obs;
// //unselected Star, hint text
// final Rx<Color> pointThreeWhiteColor = darkTheme.value ? Colors.white.withOpacity(0.3).obs : Colors.black.withOpacity(0.3).obs;
// //product name, price, selected star, Shopping basket, description title, description content
// //add to basket text, commenter, comment, comment date, doctor name, doctor specialty
// //doctor availability time, doctor availability title, doctor cv title, doctor cv
// //appointment booking text, list page options text and icon, my orders title,
// //increase and decrease product text, quantity text, make order text
// //login text, signup text,
// final Rx<Color> pointEightFiveWhiteColor = darkTheme.value ? Colors.white.withOpacity(0.85).obs : Colors.black.withOpacity(0.85).obs;
// //selected Category Background, selected filter Background, Shopping basket background
// //rate title, sub rate product title, rate number, call icon background
// //list page options background, increase and decrease product background,
// final Rx<Color> pointOEightWhiteColor = darkTheme.value ? Colors.white.withOpacity(0.08).obs : Colors.black.withOpacity(0.08).obs; // final Color oneFourColor = Color(0xff141414);
// //selected star 2,
// const Color orangeColor = Color(0xffFF701F);
// //add to basket background, appointment booking background, make order background
// //login background, signup background
// final Color blueColor = const Color(0xff1F83F8).withOpacity(0.98);
// //bar chart line fill,
// final Rx<Color> pointNineWhiteColor = darkTheme.value ? Colors.white.withOpacity(0.9).obs : Colors.black.withOpacity(0.9).obs;
// //bar chart,
// final Rx<Color> pointFifteenWhiteColor = darkTheme.value ? Colors.white.withOpacity(0.15).obs : Colors.black.withOpacity(0.15).obs;
// final Rx<Color> twentyFourColor = darkTheme.value ? Colors.white24.obs : Colors.black26.obs;
// var chartWhite = darkTheme.value ? charts.MaterialPalette.white.obs : charts.MaterialPalette.black.obs;
// final Rx<Color> shadedGrayColor = darkTheme.value ? Colors.grey.shade800.obs : Colors.white.obs;
// final Rx<Color> userProfileCardColor = darkTheme.value ? const Color(0xff141414).obs : Colors.black12.obs;
// const Color grayColor = Colors.grey;
// const Color redColor = Colors.red;
// //--------------------------------------------------------------------------------------------------
























//import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
//
// //used fonts 👇👇👇👇👇👇
// //--------------------------------------------------------------------------------------------------
// //description content, comment, comment date, doctor specialty, doctor availability time
// //cv content, appointment booking text, list page options text, quantity text
// //make order text, hint text, please text, sign up text, login text
// //login navigator text, sign up navigator text,
// const String arabicFont400 = 'SamsungOneArabic_400';
// //category text, product name, price, bottom text, filter text, description title
// //rate title, rate number, add to basket text, commenter, chart number
// //sub rate product title, doctor name, cv title, doctor availability title
// //my orders, increase and decrease product text, favorite text
// const String arabicFont700 = 'SamsungOneArabic_700';
// const String englishFontMedium = 'SamsungSans-Medium';
// //baby care,
// const String englishFontBold = 'SamsungSans-Bold';
// //--------------------------------------------------------------------------------------------------
// bool darkTheme = false;
// //used colors 👇👇👇👇👇👇
// //--------------------------------------------------------------------------------------------------
// //main background, unselected Category Background, unselected Category Background
// //bottom background, favorite icon,
// final Color blackColor = darkTheme ? Colors.black : Colors.white;
// //baby care, selected Category text, selected filter text, search icon, selected bottom icon
// //selected bottom text, arrow icons, bar chart rate number, call icon, sign up navigator text
// //please text, login navigator text,
// final Color whiteColor = darkTheme ? Colors.white : Colors.black;
// //unselected bottom icon, unselected Category Text, unselected bottom icon, unselected bottom text
// final Color halfWhiteColor = darkTheme ? Colors.white.withOpacity(0.5) : Colors.black.withOpacity(0.5);
// //unselected Star, hint text
// final Color pointThreeWhiteColor = darkTheme ? Colors.white.withOpacity(0.3) : Colors.black.withOpacity(0.3);
// //product name, price, selected star, Shopping basket, description title, description content
// //add to basket text, commenter, comment, comment date, doctor name, doctor specialty
// //doctor availability time, doctor availability title, doctor cv title, doctor cv
// //appointment booking text, list page options text and icon, my orders title,
// //increase and decrease product text, quantity text, make order text
// //login text, signup text,
// final Color pointEightFiveWhiteColor = darkTheme ? Colors.white.withOpacity(0.85) : Colors.black.withOpacity(0.85);
// //selected Category Background, selected filter Background, Shopping basket background
// //rate title, sub rate product title, rate number, call icon background
// //list page options background, increase and decrease product background,
// final Color pointOEightWhiteColor = darkTheme ? Colors.white.withOpacity(0.08) : Colors.black.withOpacity(0.08); // final Color oneFourColor = Color(0xff141414);
// //selected star 2,
// const Color orangeColor = Color(0xffFF701F);
// //add to basket background, appointment booking background, make order background
// //login background, signup background
// final Color blueColor = const Color(0xff1F83F8).withOpacity(0.98);
// //bar chart line fill,
// final Color pointNineWhiteColor = darkTheme ? Colors.white.withOpacity(0.9) : Colors.black.withOpacity(0.9);
// //bar chart,
// final Color pointFifteenWhiteColor = darkTheme ? Colors.white.withOpacity(0.15) : Colors.black.withOpacity(0.15);
// final Color twentyFourColor = darkTheme ? Colors.white24 : Colors.black26;
// var chartWhite = darkTheme ? charts.MaterialPalette.white : charts.MaterialPalette.black;
// final Color shadedGrayColor = darkTheme ? Colors.grey.shade800 : Colors.white;
// final Color userProfileColor = darkTheme ? const Color(0xff141414) : Colors.black12;
// const Color grayColor = Colors.grey;
// const Color redColor = Colors.red;
// //--------------------------------------------------------------------------------------------------



















// //used fonts 👇👇👇👇👇👇
// //--------------------------------------------------------------------------------------------------
// //description content, comment, comment date, doctor specialty, doctor availability time
// //cv content, appointment booking text, list page options text, quantity text
// //make order text, hint text, please text, sign up text, login text
// //login navigator text, sign up navigator text,
// final String arabicFont400 = 'SamsungOneArabic_400';
// //category text, product name, price, bottom text, filter text, description title
// //rate title, rate number, add to basket text, commenter, chart number
// //sub rate product title, doctor name, cv title, doctor availability title
// //my orders, increase and decrease product text, favorite text
// final String arabicFont700 = 'SamsungOneArabic_700';
// final String englishFontMedium = 'SamsungSans-Medium';
// //baby care,
// final String englishFontBold = 'SamsungSans-Bold';
// //--------------------------------------------------------------------------------------------------
//
// //used colors 👇👇👇👇👇👇
// //--------------------------------------------------------------------------------------------------
// //main background, unselected Category Background, unselected Category Background
// //bottom background, favorite icon,
// final Color blackColor = Colors.black;
// //baby care, selected Category text, selected filter text, search icon, selected bottom icon
// //selected bottom text, arrow icons, bar chart rate number, call icon, sign up navigator text
// //please text, login navigator text,
// final Color whiteColor = Colors.white;
// //unselected bottom icon, unselected Category Text, unselected bottom icon, unselected bottom text
// final Color halfWhiteColor = Colors.white.withOpacity(0.5);
// //unselected Star, hint text
// final Color pointThreeWhiteColor = Colors.white.withOpacity(0.3);
// //product name, price, selected star, Shopping basket, description title, description content
// //add to basket text, commenter, comment, comment date, doctor name, doctor specialty
// //doctor availability time, doctor availability title, doctor cv title, doctor cv
// //appointment booking text, list page options text and icon, my orders title,
// //increase and decrease product text, quantity text, make order text
// //login text, signup text,
// final Color pointEightFiveWhiteColor = Colors.white.withOpacity(0.85);
// //selected Category Background, selected filter Background, Shopping basket background
// //rate title, sub rate product title, rate number, call icon background
// //list page options background, increase and decrease product background,
// final Color pointOEightWhiteColor = Colors.white.withOpacity(0.08); // final Color oneFourColor = Color(0xff141414);
// //selected star 2,
// const Color orangeColor = Color(0xffFF701F);
// //add to basket background, appointment booking background, make order background
// //login background, signup background
// final Color blueColor = Color(0xff1F83F8).withOpacity(0.98);
// //bar chart line fill,
// final Color pointNineWhiteColor = Colors.white.withOpacity(0.9);
// //bar chart,
// final Color pointFifteenWhiteColor = Colors.white.withOpacity(0.15);
// //--------------------------------------------------------------------------------------------------
