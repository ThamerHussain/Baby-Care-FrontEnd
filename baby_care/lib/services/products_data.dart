import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:get/get.dart';

List<List<String>> suggestionsProducts = [
  <String>['مقترحات', '13,000', 'assets/images/1.jpg'],
  <String>['مقترحات', '13,000', 'assets/images/1.jpg'],
  <String>['مقترحات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> clothesProducts = [
  <String>['ملابس', '13,000', 'assets/images/1.jpg'],
  <String>['ملابس', '13,000', 'assets/images/1.jpg'],
  <String>['ملابس', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> diapersProducts = [
  <String>['حفاظات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
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
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
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
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
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
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
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
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
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
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
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
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
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
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
  <String>['حفاظات بامبرز', '13,000', 'assets/images/1.jpg'],
];

List<List<String>> doctors = [
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
  <String>['حفاظات مال محمد', '13,000', 'assets/images/1.jpg', '1'],
  <String>['حفاظات مال عمر', '13,000', 'assets/images/1.jpg', '4'],
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