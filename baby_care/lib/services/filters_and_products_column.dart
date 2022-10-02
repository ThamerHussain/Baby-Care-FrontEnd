import 'package:baby_care/services/products_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'filter_button.dart';
import 'product_info_row.dart';

// final RxList productsAndFilters = [clothesProducts, null].obs;
final RxList<Map<dynamic, dynamic>> productsData = clothesProducts.obs;
// [
  // {'x' as dynamic: 'x' as dynamic}
// ].obs;

final RxList productsFilters = [].obs;

Expanded filtersAndItemsColumn() {
  // return Obx(() {
  // print(productsAndFilters[1]);
  return Expanded(
    child: Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 50, 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Obx(() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:
                      // productsAndFilters[1] == null
                      // filters[0] == null
                      productsFilters.isEmpty
                          ? []
                          :
                          // productsAndFilters[1]
                          productsFilters[0]
                              .map<Padding>(
                                  (List<String> filter) => filterButton(filter))
                              .toList(),
                );
              }),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Obx(() {
              return Column(
                children:
                    // productsAndFilters[0]
                    // productsData[0]['x'] == 'x'
                    //     ? []
                    //     :
                    productsData
                            .map<Padding>((Map<dynamic, dynamic> product) =>
                                productInfoRow(
                                    product.values.elementAt(0),
                                    product.values.elementAt(1),
                                    'assets/images/2.jpg',
                                    product.values.elementAt(3)))
                            .toList(),
              );
            }),
          ),
        ),
      ],
    ),
  );
  // });
}

//
// import 'package:baby_care/services/products_data.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_rx/src/rx_types/rx_types.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'category_button.dart';
// import 'filter_button.dart';
// import 'product_info_row.dart';
// import 'requests.dart';
//
//
//
//
// final RxList productsAndFilters = [diapersProducts, null].obs;
// // final Rx<List<Map<dynamic, dynamic>>> productsAndFilter = diapersProducts.obs as Rx<List<Map>>;
//
// // Obx filtersAndItemsColumn() {
//
//   class Control extends GetxController {
//
//     late List<Map<dynamic, dynamic>>? data = [];
//
//     @override
//     void onInit() {
//       super.onInit();
//       getData();
//     }
//
//     Future<List<Map>?> getData() async {
//       selectedCategoryStr.value == 'clothesProducts' ?
//       data = (await getClothesProducts())! :
//       getSuggestedProducts();
//       return data;
//
//       // Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
//     }
//   }
//   Future<Obx> filtersAndItemsColumn() async{return
//     Obx(() {
//       print(productsAndFilters.value[1]);
//       print(
//           '${productsAndFilters
//               .value[0]}......................;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
//       return Expanded(
//         child: Column(
//           children: [
//             SizedBox(
//               width: double.maxFinite,
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 0, 50, 25),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   reverse: true,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: productsAndFilters.value[1] == null
//                         ? []
//                         : productsAndFilters.value[1]
//                         .map<Padding>(
//                             (List<String> filter) => filterButton(filter))
//                         .toList(),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: Control().getData() //productsAndFilters[0]
//                       .map<Padding>((Map<dynamic, dynamic> product) =>
//                       productInfoRow(
//                           product.values.elementAt(0),
//                           product.values.elementAt(1),
//                           'assets/images/2.jpg',
//                           product.values
//                               .elementAt(3))) //product.values.elementAt(2)))
//                       .toList(),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     });
//   }

// @override
// Widget build(BuildContext context) {
//   return Obx(() {
//     // selectedCategoryStr.value.isNotEmpty?
//     // setState(() => {}):print(1);
//
//   //   print(productsAndFilters.value[1]);
//   //   print(
//   //       '${productsAndFilters.value[0]}......................;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
//     return Expanded(
//       child: Column(
//         children: [
//           SizedBox(
//             width: double.maxFinite,
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(0, 0, 50, 25),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 reverse: true,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: productsAndFilters.value[1] == null
//                       ? []
//                       : productsAndFilters.value[1]
//                       .map<Padding>(
//                           (List<String> filter) => filterButton(filter))
//                       .toList(),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: data!//productsAndFilters[0]
//                     .map<Padding>((Map<dynamic, dynamic> product) =>
//                     productInfoRow(
//                         product.values.elementAt(0),
//                         product.values.elementAt(1),
//                         'assets/images/2.jpg',
//                         product.values
//                             .elementAt(3))) //product.values.elementAt(2)))
//                     .toList(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   });
// }

//
// final RxList productsAndFilters = [diapersProducts, null].obs;
// // final Rx<List<Map<dynamic, dynamic>>> productsAndFilter = diapersProducts.obs as Rx<List<Map>>;
//
// // Obx filtersAndItemsColumn() {
//
//   class filtersAndItemsColumn extends StatefulWidget {
//     const filtersAndItemsColumn({Key? key}) : super(key: key);
//
//     @override
//     State<filtersAndItemsColumn> createState() => filtersAndItemsColumnState();
//   }
//
//   class filtersAndItemsColumnState extends State<filtersAndItemsColumn> {
//
//     late List<Map<dynamic, dynamic>>? data = [];
//
//     @override
//
//     void initState() {
//       super.initState();
//       getData();
//     }
//
//     void getData() async {
//
//
//       selectedCategoryStr.value == 'clothesProducts'?
//       data = (await getClothesProducts())!:
//       data = (await getSuggestedProducts())!;
//           // print('11111111111111111111111111111111111111111');
//
//
//       Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
//     }
//
//
//     @override
//     Widget build(BuildContext context) {
//       return Obx(() {
//         selectedCategoryStr.value.isNotEmpty?
//         setState(() => {}):print(1);
//
//       //   print(productsAndFilters.value[1]);
//       //   print(
//       //       '${productsAndFilters.value[0]}......................;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
//         return Expanded(
//           child: Column(
//             children: [
//               SizedBox(
//                 width: double.maxFinite,
//                 child: Padding(
//                   padding: const EdgeInsets.fromLTRB(0, 0, 50, 25),
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     reverse: true,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: productsAndFilters.value[1] == null
//                           ? []
//                           : productsAndFilters.value[1]
//                           .map<Padding>(
//                               (List<String> filter) => filterButton(filter))
//                           .toList(),
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: data!//productsAndFilters[0]
//                         .map<Padding>((Map<dynamic, dynamic> product) =>
//                         productInfoRow(
//                             product.values.elementAt(0),
//                             product.values.elementAt(1),
//                             'assets/images/2.jpg',
//                             product.values
//                                 .elementAt(3))) //product.values.elementAt(2)))
//                         .toList(),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       });
//     }
//   }
//

//   return Obx(() {
//     print(productsAndFilters.value[1]);
//     print(
//         '${productsAndFilters.value[0]}......................;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;');
//     return Expanded(
//       child: Column(
//         children: [
//           SizedBox(
//             width: double.maxFinite,
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(0, 0, 50, 25),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 reverse: true,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: productsAndFilters.value[1] == null
//                       ? []
//                       : productsAndFilters.value[1]
//                           .map<Padding>(
//                               (List<String> filter) => filterButton(filter))
//                           .toList(),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: productsAndFilter//productsAndFilters[0]
//                     .map<Padding>((Map<dynamic, dynamic> product) =>
//                         productInfoRow(
//                             product.values.elementAt(0),
//                             product.values.elementAt(1),
//                             'assets/images/2.jpg',
//                             product.values
//                                 .elementAt(3))) //product.values.elementAt(2)))
//                     .toList(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   });
// }
