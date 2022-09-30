import 'package:baby_care/services/description_container.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get/get.dart';

List<List<String>> suggestionsProducts = [
  <String>['حذاء للالولاد', '8,000', 'assets/images/shoes1.jpg','حذاء ازرق'],
  <String>['عربة', '25,000', 'assets/images/vichales1.jpg',"عربة جميلة"],
  <String>['رضاعة 250مل ', '2,000', 'assets/images/foodtool1.jpg','رضاعة'],
  <String>[' فواكه مهروسة', '1,500', 'assets/images/food4.jpg','هريس الفواكه'],
  <String>[' تيشيرت للاولاد', '5,000', 'assets/images/2.jpg','تيشيرت للاولاد'],
  <String>[' مناديل مرطبة', '13,000', 'assets/images/bath4.jpg','مناديل مرطبة'],
  <String>['حفاظات بابمرز', '13,000', 'assets/images/disapers4.jpg','حفاظات'],
];

List<List<String>> clothesProducts = [
  <String>['تيشيرت للاولاد', '5,000', 'assets/images/2.jpg',"تيشيرت اسود"],
  <String>['تيشيرت للاولاد', '4,500', 'assets/images/3.jpg',"تيشيرت"],
  <String>['تيشيرت للبنات', '7,000', 'assets/images/4.jpg',"تيشيرت وردي"],
  <String>[' تيشيرت للبنات', '6,000', 'assets/images/5.jpg',"تيشيرت وردي"],
  <String>[' تيشيرت للبنات', '4,000', 'assets/images/clothes1.jpg',"تيشيرت وردي"],
  <String>['تيشيرت للبنات', '3,000', 'assets/images/7.jpg',"تيشيرت وردي"],
   <String>['تيشيرت للاولاد', '5,000', 'assets/images/clothes2.jpg',"تيششيرت"],
  <String>['تيشيرت للاولاد', '4,500', 'assets/images/clothes3.jpg',"تيشيرت"],
  <String>['تيشيرت للبنات', '7,000', 'assets/images/clothes4.jpg',"تيشيرت وردي"],
  <String>[' تيشيرت للبنات', '6,000', 'assets/images/clothes5.jpg',"تيشيرت "],
  <String>[' تيشيرت للبنات', '4,000', 'assets/images/clothes6.jpg',"تيشيرت"],
];

List<List<String>> diapersProducts = [
  <String>['حفاظات كونفي رقم2', '10,000', 'assets/images/disaprs1.jpg','تتميزبالنعومة'],
  <String>['حفاظات بامبرز رقم6', '9,000', 'assets/images/disapers2.webp','تتميزبالنعومة'],
  <String>['حفاظات مولفكس رقم5', '6,000', 'assets/images/disapers3.jpg','تتميزبالنعومة'],
  <String>['حفاظات بيبي شارك رقم 5' , '8,000', 'assets/images/disapers4.jpg','تتميزبالنعومة'],
  <String>['حفاظات بيبي جوي رقم5', '15,000', 'assets/images/disapers5.jpg','تتميزبالنعومة'],
  <String>['حفاظات ايفي بيبي رقم 3', '3,000', 'assets/images/disapers6.jpg','تتميزبالنعومة'],
];

List<List<String>> foodProducts = [
  <String>['شوربة اطفال', '13,000', 'assets/images/food1.png','لذيذ ويساعد على الهضم'],
  <String>['مهروس الفواكه', '13,000', 'assets/images/food2.webp','لذيذ ويساعد على الهضم'],
  <String>['مهروس الفواكه', '13,000', 'assets/images/food3.webp','لذيذ ويساعد على الهضم'],
  <String>['مهروس الفواكه ', '1,500', 'assets/images/food4.jpg','لذيذ ويساعد على الهضم'],
  <String>[' كورن فليكس', '3,000', 'assets/images/food5.jpg','لذيذ ويساعد على الهضم'],
  <String>[' حليب نوفالاك', '13,000', 'assets/images/food6.webp','لذيذ ويساعد على الهضم'],
];

List<List<String>> foodToolProducts = [
  <String>[' رضاعة 250 مل', '3,000', 'assets/images/foodtool1.jpg','مريحة ومناسببةللاطفال'],
  <String>['أدوات طعام', '3,000', 'assets/images/foodtool2.jpg','مريحة ومناسببةللاطفال'],
  <String>[' رضاعة 400 مل', '3,500', 'assets/images/foodtool3.jpg','مريحة ومناسببةللاطفال'],
  <String>[' كوب لشرب الماء', '2,000', 'assets/images/foodtool4.webp','مريحة ومناسببةللاطفال'],
  <String>['كوب لشرب الماء ', '2,250', 'assets/images/foodtool5.webp','مريحة ومناسببةللاطفال'],
  <String>['رضاعة 300 مل ', '3,250', 'assets/images/foodtool6.jpg','مريحة ومناسببةللاطفال'],
];

List<List<String>> showerToolProducts = [
  <String>[' شامبو جوي بيبي', '3,000', 'assets/images/bath1.jpg','ينعم الشعر ولا يؤذي الاعين'],
  <String>['أدوات إستحمام', '3,000', 'assets/images/bath2.jpg','fggfrefg'],
  <String>['مناديل مرطبة ', '2,500', 'assets/images/bath3.jpg','ناعمة ولا تسبب الحساسية'],
  <String>[' صابون بنفسجي', '1,000', 'assets/images/bath4.jpg','خوش ينظف'],
  <String>[' ادوات استحمام', '13,000', 'assets/images/bath5.webp','لبي'],
  <String>['ادوات استحمام ', '13,000', 'assets/images/bath6.jpg','لبي'],

];

List<List<String>> shoesProducts = [
  <String>['حذاء للاولاد', '5,000', 'assets/images/shoes1.jpg'],
  <String>['حذاء للبنات', '6,000', 'assets/images/shoes2.jpg'],
  <String>['حذاء رياضي', '7,000', 'assets/images/shoes3.jpg'],
  <String>['جذاء للبنات ', '6,000', 'assets/images/shoes4.jpg'],
  <String>[' حذاء رياضي', '7,000', 'assets/images/shoes5.jpg'],
];
List<List<String>> vehiclesProducts = [
  <String>['عربة اطفال زهرية', '30,000', 'assets/images/vichales1.webp','مريحة اثناء المشي '],
  <String>['عربة اطفال', '45,000', 'assets/images/vichales2.jpg','مريحة اثناء المشي '],
  <String>['عربة اطفال', '35,000', 'assets/images/vichales5.jpg','مريحة اثناء المشي '],
  <String>[' عربة اطفال ', '35,000', 'assets/images/vichales6.jpg','مريحة اثناء المشي '],
  <String>['عربة لتعليم المشي ', '20,000', 'assets/images/vichales4.jpg','مريحة اثناء المشي '],
  <String>['عربة لتعليم المشي ', '25,000', 'assets/images/vichales3.jpg','مريحة اثناء المشي '],
];

List<List<String>> containersProducts = [
  <String>['حاضنة', '15,000', 'assets/images/container1.jpg','مريحة وتساعد في نوم الطفل'],
  <String>['حاضنة', '55,000', 'assets/images/container2.webp','مريحة وتساعد في نوم الطفل'],
  <String>['حاضنة', '10,000', 'assets/images/container3.jpg','مريحة وتساعد في نوم الطفل'],
  <String>[' حاضنة', '35,000', 'assets/images/container4.jpg','مريحة وتساعد في نوم الطفل'],
  <String>['حاضنة ', '40,000', 'assets/images/container5.jpg','مريحة وتساعد في نوم الطفل'],
  <String>['حاضنة ', '45,000', 'assets/images/container6.jpg','مريحة وتساعد في نوم الطفل'],
];

List<List<String>> furnitureProducts = [
  <String>['وسادة', '10,000', 'assets/images/furniture1.png','مريحة وتساعد في نوم الطفل'],
  <String>['غطاء شتوي', '13,000', 'assets/images/furniture2.png','مريحة وتساعد في نوم الطفل'],
  <String>['وسادة صغيرة', '3,000', 'assets/images/furniture3.png','مريحة وتساعد في نوم الطفل'],
  <String>[' غطاء', '7,000', 'assets/images/furniture4.png','مريحة وتساعد في نوم الطفل'],
  <String>[' بطانية', '8,000', 'assets/images/furniture5.png','مريحة وتساعد في نوم الطفل'],
  <String>['وسادة كبيرة ', '6,000', 'assets/images/furniture6.png','مريحة وتساعد في نوم الطفل'],
];

List<List<String>> doctors = [
  <String>['د.حنان العبيدي', 'أخصائي جلدية', 'assets/images/doctor1.jpg','شهادة طب من جامعة بغداد'],
  <String>['د.يعقوب قمر الدين ', 'أخصائي انف واذن وحنجرة', 'assets/images/doctor2.jpg','شهادة طب من جامعة بغداد'],
  <String>['د.علاء الجبوري', 'أخصائي باطنية', 'assets/images/doctor3.jpg','شهادة طب من جامعة بغداد'],
  <String>['د.مريم الدليمي', 'أخصائي جهاز تنفسي', 'assets/images/doctor4.jpg','شهادة طب من جامعة بغداد'],
  <String>['د.  اسماعيل احمد', 'أخصائي اسنان', 'assets/images/doctor5.jpg','شهادة طب من جامعة بغداد'],
  <String>['د.عثمان عبدالجليل', 'أخصائي تغذية', 'assets/images/doctor6.jpg','شهادة طب من جامعة بغداد'],
  <String>['د.محمد سنبل', 'أخصائي اورام', 'assets/images/doctor7.jpg','شهادة طب من جامعة بغداد'],
];

String moeText =
    'والله والله والله وانت مامحلفني هذا التيشيرت الا يخبل خاماية غير تركي ماركة فول ليكرا تشك شك شنو ثلج  بالصيف ونار بالشتا ولاعبالك ب3 وونص اخذهة وبيهة ضمان شهرين لا تنشك ولا تنفتك غير اصلية مال عمك اخذهة وخل ابنك يتهنة';

String doctorText =
    'بكلوريوس طب عام من جامعة بغداد كلية الطب تخصص الرعاية الصحية للأطفال من جامعة ميونخ بورد الرعاية الصحية للأطفال من جامعة كامبريدج...';

class RateSeries {
  final String starsNumber;
  final int count;
  final charts.Color barColor;

  RateSeries(
      {required this.starsNumber, required this.count, required this.barColor});
}

final List<RateSeries> data = [

  RateSeries(
    starsNumber: '5',
    count: 25,
    barColor: charts.ColorUtil.fromDartColor(pointNineWhiteColor.value),
  ),
  RateSeries(
    starsNumber: '4',
    count: 20,
    barColor: charts.ColorUtil.fromDartColor(pointNineWhiteColor.value),
  ),
  RateSeries(
    starsNumber: '3',
    count: 15,
    barColor: charts.ColorUtil.fromDartColor(pointNineWhiteColor.value),
  ),
  RateSeries(
    starsNumber: '2',
    count: 10,
    barColor: charts.ColorUtil.fromDartColor(pointNineWhiteColor.value),
  ),
  RateSeries(
    starsNumber: '1',
    count: 5,
    barColor: charts.ColorUtil.fromDartColor(pointNineWhiteColor.value),
  ),
];

RxList<List<String>> comments = [
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  <String>['Thamer Hussein', 'ماكو هيج تيشيرت يخبل بمسؤوليتي وبركبتي (هذا محمد البوي كتبها)'],
  ].obs;

List<List<String>> myOrdersData = [
  <String>['وسادة', '10,000', 'assets/images/furniture1.png','مريحة وتساعد في نوم الطفل'],
  <String>['غطاء شتوي', '13,000', 'assets/images/furniture2.png','مريحة وتساعد في نوم الطفل'],
  <String>['وسادة صغيرة', '3,000', 'assets/images/furniture3.png','مريحة وتساعد في نوم الطفل'],
  <String>[' غطاء', '7,000', 'assets/images/furniture4.png','مريحة وتساعد في نوم الطفل'],
  <String>[' بطانية', '8,000', 'assets/images/furniture5.png','مريحة وتساعد في نوم الطفل'],
  <String>['وسادة كبيرة ', '6,000', 'assets/images/furniture6.png','مريحة وتساعد في نوم الطفل'],
];

// class ProductRating {
//   final String comment;
//   final double stars;
//
//   ProductRating(this.comment
//       ,this.stars
//       );
//
//   static RxList<ProductRating>? productCommentsAndStars = [].obs as RxList<ProductRating>?;
//
//   static add(String comment,double stars) {
//     productCommentsAndStars?.value.add(ProductRating(comment,stars));
//   }
// }
//
// List<String> productComment = [];
// addComment(String comment) {
//   productComment.add(comment);
// }

RxList<dynamic> productRating = [].obs;
