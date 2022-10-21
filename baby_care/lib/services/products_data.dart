import 'package:baby_care/services/description_container.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get/get.dart';

List<List<String>> suggestionsProducts = [
  <String>['مقترحات', '13,000', 'assets/images/1.jpg'],
  <String>['مقترحات', '13,000', 'assets/images/1.jpg'],
  <String>['مقترحات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

// List<Map<dynamic, dynamic>> clothesProducts = [
// {
// "w": "",
// "x": "",
// "y": "",
// "z": ""
// },];
List<Map<dynamic, dynamic>> favoriteTProducts = [
  {
    'product':{
    "name": "تيشيرت السنة الأولى",
    "price": "1,500",
    "image_url": "/static/4.jpg",
    "stars": 5,
      'description': 'description'}
  },
  ];

List<Map<dynamic, dynamic>> cartProducts = [
  {
    'product':{
    "name": "تيشيرت السنة الأولى",
    "price": "1,500",
    "image_url": "/static/4.jpg",
    "stars": 5,
      'description': 'description'}
  },
  ];

List<Map<dynamic, dynamic>> clothesProducts = [
  {
    "name": "تيشيرت السنة الأولى",
    "price": "20,000",
    "image": "/static/4.jpg",
    "stars": 5,
    'description': 'description'
  },


  // {
  //   "name": "شامبو جونسون آند جونسون",
  //   "price": "20,000",
  //   "image": "/None/2DF_800.jpg",
  //   "stars": 5
  // },
  // {
  //   "name": "حليب نيدو  1-3  سنة",
  //   "price": "20,000",
  //   "image": "/None/Aptamil-Baby-milk-Aptamil-Pronutra-Nido-milk.jpg",
  //   "stars": 5
  // },
  // {
  //   "name": "تيشيرت الهالوين",
  //   "price": "4,000",
  //   "image": "/None/XouVIUdesAcLnliZdYHX.png",
  //   "stars": 5
  // },
  // {
  //   "name": "ممية أيڤنت",
  //   "price": "10,000",
  //   "image": "/None/BILD3_SCF0-108662.jpg",
  //   "stars": 5
  // },
  // {
  //   "name": "تيشيرت السنة الأولى",
  //   "price": "4,000",
  //   "image": "/None/61ISiTmuyeL_1_Zmc7QnC.png",
  //   "stars": 5
  // },
  // {
  //   "name": "بجامة الدب",
  //   "price": "4,000",
  //   "image": "/None/mayoral-baby-boy-4pc-trouser-set-p2751-7077_image.jpg",
  //   "stars": 5
  // },
  // {
  //   "name": "كاكا",
  //   "price": "10,000",
  //   "image": "/None/Hf9edc84a2da94e3f824b8e61a54b16cer.jpg__GgWyHnq.webp",
  //   "stars": 5
  // },
  // {
  //   "name": "حفاظات بامبرز",
  //   "price": "20,000",
  //   "image": "/None/d.jpg",
  //   "stars": 4
  // },
  // {
  //   "name": "سيريلاك مع الحليب",
  //   "price": "4,000",
  //   "image": "/None/81YU0gD3AZL._SL1500_.jpg",
  //   "stars": 4
  // },
  // {
  //   "name": "بجامة النجوم",
  //   "price": "4,000",
  //   "image": "/None/1306-ff1b95cce2c853891a1f37059122560d.jpg",
  //   "stars": 4
  // },
  // {
  //   "name": "لِباس وردي مع القمر",
  //   "price": "4,000",
  //   "image": "/None/Children-Girl-Underwear-Wholesale-Baby-Girl-Underwear-Cotton-Sales-Kids-Underwear.jpg",
  //   "stars": 4
  // }
];

// List<List<String>> clothesProducts = [
//   <String>['ملابس', '13,000', 'assets/images/1.jpg'],
//   <String>['ملابس', '13,000', 'assets/images/1.jpg'],
//   <String>['ملابس', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
//   <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
// ];

List<List<String>> diapersProducts = [
  <String>['حفاظات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> foodProducts = [
  <String>['طعام', '13,000', 'assets/images/1.jpg'],
  <String>['طعام', '13,000', 'assets/images/1.jpg'],
  <String>['طعام', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> foodToolProducts = [
  <String>['أدوات طعام', '13,000', 'assets/images/1.jpg'],
  <String>['أدوات طعام', '13,000', 'assets/images/1.jpg'],
  <String>['أدوات طعام', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> showerToolProducts = [
  <String>['أدوات إستحمام', '13,000', 'assets/images/1.jpg'],
  <String>['أدوات إستحمام', '13,000', 'assets/images/1.jpg'],
  <String>['أدوات إستحمام', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> shoesProducts = [
  <String>['أحذية', '13,000', 'assets/images/1.jpg'],
  <String>['أحذية', '13,000', 'assets/images/1.jpg'],
  <String>['أحذية', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];
List<List<String>> vehiclesProducts = [
  <String>['مركبات', '13,000', 'assets/images/1.jpg'],
  <String>['مركبات', '13,000', 'assets/images/1.jpg'],
  <String>['مركبات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> containersProducts = [
  <String>['حاضنات', '13,000', 'assets/images/1.jpg'],
  <String>['حاضنات', '13,000', 'assets/images/1.jpg'],
  <String>['حاضنات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> furnitureProducts = [
  <String>['مفروشات', '13,000', 'assets/images/1.jpg'],
  <String>['مفروشات', '13,000', 'assets/images/1.jpg'],
  <String>['مفروشات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> doctorsOm = [
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
  <String>['د.فلان', 'أخصائي كذا', 'assets/images/1.jpg'],
];

List<Map<dynamic, dynamic>> doctors = [
{
"name": "د.فلان",
"price": "أخصائي كذا",
"image": "/static/3.jpg",
"cv": "cv"
},
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },
//
// {
// "name": "د.فلان",
// "price": "أخصائي كذا",
// "image": "assets/images/1.jpg",
// "stars": 5
// },

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
  <String>['حفاظات', '13,000', 'assets/images/1.jpg', '3'],
  <String>['حفاظات', '13,000', 'assets/images/1.jpg', '1'],
  <String>['حفاظات', '13,000', 'assets/images/1.jpg', '4'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '5'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '2'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '2'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '2'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '1'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '3'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '5'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '2'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '3'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg', '1'],
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


