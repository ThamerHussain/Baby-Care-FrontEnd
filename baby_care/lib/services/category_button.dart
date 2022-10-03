import 'package:baby_care/pages/search_page.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/requests.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/main_page.dart';
import 'filters_and_products_column.dart';
import 'used_fonts_and_colors.dart';
import 'filter_data.dart';
import 'my_text.dart';

RxInt selectedCategory = 1.obs;

Obx categoryButton(text, int categoryNumber) {
  return Obx(() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          onPressed: (() {
            selectedCategory.value = categoryNumber;
            if (categoryNumber == 1) {
              getSuggestedProducts();
              // productsAndFilters[0] = suggestionsProducts;
              // productsAndFilters[1] = null;
              productsFilters.value = [];

            } else if (categoryNumber == 2) {
              // productsAndFilters[0] = clothesProducts;
              getClothesProducts();
              // productsAndFilters[1] = clothesFilterData;
              productsFilters.value = [clothesFilterData];
            } else if (categoryNumber == 3) {
              // productsAndFilters[0] = diapersProducts;
              // productsAndFilters[1] = [clothesFilterData[1]];
              // products.value = diapersProducts;
              getDiaperProducts();
              productsFilters.value = [[clothesFilterData[1]]];

            } else if (categoryNumber == 4) {
              // productsAndFilters[0] = foodProducts;
              getFoodProducts();
              productsFilters.value = [foodFilterData];
            } else if (categoryNumber == 5) {
              // productsAndFilters[0] = foodToolProducts;
              getFoodToolsProducts();
              productsFilters.value = [foodToolFilterData];
            } else if (categoryNumber == 6) {
              // productsAndFilters[0] = showerToolProducts;
              getShowerToolsProducts();
              productsFilters.value = [showerToolFilterData];
            } else if (categoryNumber == 7) {
              // productsAndFilters[0] = shoesProducts;
              getShoesProducts();
              productsFilters.value = [[
                clothesFilterData[1],
                clothesFilterData[2]
              ]];
            } else if (categoryNumber == 8) {
              // productsAndFilters[0] = vehiclesProducts;
              getVehiclesProducts();
              productsFilters.value = [vehicleFilterData];
            } else if (categoryNumber == 9) {
              // productsAndFilters[0] = containersProducts;
              getContainersProducts();
              productsFilters.value = [containerFilterData];
            } else {
              // productsAndFilters[0] = furnitureProducts;
              getFurnitureProducts();
              productsFilters.value = [furnitureFilterData];
            }
            // productsAndFilters.refresh();
          }),
          child: Center(
              child: MyText(
                  data: text,
                  font: arabicFont700,
                  size: 15,
                  color: selectedCategory.value == categoryNumber
                      ? whiteColor.value
                      : halfWhiteColor.value))),
    );
  });
}































//
// import 'package:baby_care/services/products_data.dart';
// import 'package:baby_care/services/requests.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'used_fonts_and_colors.dart';
// import 'filter_data.dart';
// import 'filters_and_products_column.dart';
// import 'my_text.dart';
//
// RxInt selectedCategory = 1.obs;
// RxString selectedCategoryStr = 'diapersProducts'.obs;
// Obx categoryButton(text, int categoryNumber) {
//   return Obx(() {
//     return TextButton(
//         style: ButtonStyle(
//           shape: MaterialStateProperty.all<BeveledRectangleBorder>(
//               BeveledRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           )),
//         ),
//         onPressed: (() {
//           selectedCategory.value = categoryNumber;
//           if (categoryNumber == 1) {
//             productsAndFilters.value[0] = getSuggestedProducts();//suggestionsProducts;
//             productsAndFilters.value[1] = null;
//           } else if (categoryNumber == 2) {
//             selectedCategoryStr.value = 'clothesProducts';
//             // filtersAndItemsColumnState.ini
//             productsAndFilters.value[0] = clothesProducts;
//             productsAndFilters.value[1] = clothesFilterData;
//           } else if (categoryNumber == 3) {
//             productsAndFilters.value[0] = diapersProducts;
//             productsAndFilters.value[1] = clothesFilterData[1];
//           } else if (categoryNumber == 4) {
//             productsAndFilters.value[0] = foodProducts;
//             productsAndFilters.value[1] = foodFilterData;
//           } else if (categoryNumber == 5) {
//             productsAndFilters.value[0] = foodToolProducts;
//             productsAndFilters.value[1] = foodToolFilterData;
//           } else if (categoryNumber == 6) {
//             productsAndFilters.value[0] = showerToolProducts;
//             productsAndFilters.value[1] = showerToolFilterData;
//           } else if (categoryNumber == 7) {
//             productsAndFilters.value[0] = shoesProducts;
//             productsAndFilters.value[1] = [
//               clothesFilterData[1],
//               clothesFilterData[2]
//             ];
//           } else if (categoryNumber == 8) {
//             productsAndFilters.value[0] = vehiclesProducts;
//             productsAndFilters.value[1] = vehicleFilterData;
//           } else if (categoryNumber == 9) {
//             productsAndFilters.value[0] = containersProducts;
//             productsAndFilters.value[1] = containerFilterData;
//           } else {
//             productsAndFilters.value[0] = furnitureProducts;
//             productsAndFilters.value[1] = furnitureFilterData;
//           }
//           productsAndFilters.refresh();
//         }),
//         child: Container(
//           width: 100,
//           height: 27,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: selectedCategory.value == categoryNumber
//                   ? pointOEightWhiteColor.value
//                   : blackColor.value),
//           child: Center(
//               child: MyText(
//                   data: text,
//                   font: arabicFont700,
//                   size: 15,
//                   color: selectedCategory.value == categoryNumber
//                       ? whiteColor.value
//                       : halfWhiteColor.value)),
//         ));
//   });
// }











//
// RxInt selectedCategory = 1.obs;
// String selectedCategoryStr = 'diapersProducts';
// class CategoryButton extends StatefulWidget {
//   final String text;
//   final int categoryNumber;
//
//   CategoryButton({Key? key, required this.text, required this.categoryNumber}) : super(key: key);
//
//   @override
//   State<CategoryButton> createState() => _CategoryButtonState();
// }
//
// class _CategoryButtonState extends State<CategoryButton> {
//   // late List<Map<dynamic, dynamic>> suggestionsProducts = [];
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   getData();
//   // }
//   //
//   // void getData() async {
//   //   suggestionsProducts = (await getSuggestedProducts())!;
//   //   Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() {
//       return TextButton(
//           style: ButtonStyle(
//             shape: MaterialStateProperty.all<BeveledRectangleBorder>(
//                 BeveledRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             )),
//           ),
//           onPressed: (() {
//             // selectedCategory.value = widget.categoryNumber;
//             if (widget.categoryNumber == 1) {
//               productsAndFilters.value[0] =
//                   suggestionsProducts;
//               // productsAndFilter.value = data!;
//               // productsAndFilter.refresh();
//               print(data);
//               productsAndFilters.value[1] = null;
//             } else if (widget.categoryNumber == 2) {
//               selectedCategoryStr = 'clothesProducts';
//               productsAndFilters.value[0] = clothesProducts;
//               productsAndFilters.value[1] = clothesFilterData;
//             } else if (widget.categoryNumber == 3) {
//               productsAndFilters.value[0] = diapersProducts;
//               productsAndFilters.value[1] = [clothesFilterData[1]];
//             } else if (widget.categoryNumber == 4) {
//               productsAndFilters.value[0] = foodProducts;
//               productsAndFilters.value[1] = foodFilterData;
//             } else if (widget.categoryNumber == 5) {
//               productsAndFilters.value[0] = foodToolProducts;
//               productsAndFilters.value[1] = foodToolFilterData;
//             } else if (widget.categoryNumber == 6) {
//               productsAndFilters.value[0] = showerToolProducts;
//               productsAndFilters.value[1] = showerToolFilterData;
//             } else if (widget.categoryNumber == 7) {
//               productsAndFilters.value[0] = shoesProducts;
//               productsAndFilters.value[1] = [
//                 clothesFilterData[1],
//                 clothesFilterData[2]
//               ];
//             } else if (widget.categoryNumber == 8) {
//               productsAndFilters.value[0] = vehiclesProducts;
//               productsAndFilters.value[1] = vehicleFilterData;
//             } else if (widget.categoryNumber == 9) {
//               productsAndFilters.value[0] = containersProducts;
//               productsAndFilters.value[1] = containerFilterData;
//             } else {
//               productsAndFilters.value[0] = furnitureProducts;
//               productsAndFilters.value[1] = furnitureFilterData;
//             }
//             productsAndFilters.refresh();
//             setState(() {
//
//             });
//           }),
//           child: Container(
//             width: 100,
//             height: 27,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: selectedCategory.value == widget.categoryNumber
//                     ? pointOEightWhiteColor.value
//                     : blackColor.value),
//             child: Center(
//                 child: MyText(
//                     data: widget.text,
//                     font: arabicFont700,
//                     size: 15,
//                     color: selectedCategory.value == widget.categoryNumber
//                         ? whiteColor.value
//                         : halfWhiteColor.value)),
//           ));
//     });
//   }
// }
//
// RxInt selectedCategory = 1.obs;

// Obx categoryButton(text, int categoryNumber) {
//   return Obx(() {
//     return TextButton(
//         style: ButtonStyle(
//           shape: MaterialStateProperty.all<BeveledRectangleBorder>(
//               BeveledRectangleBorder(
//             borderRadius: BorderRadius.circular(10),
//           )),
//         ),
//         onPressed: (() {
//           selectedCategory.value = categoryNumber;
//           if (categoryNumber == 1) {
//             productsAndFilters.value[0] = getSuggestedProducts();//suggestionsProducts;
//             productsAndFilters.value[1] = null;
//           } else if (categoryNumber == 2) {
//             productsAndFilters.value[0] = clothesProducts;
//             productsAndFilters.value[1] = clothesFilterData;
//           } else if (categoryNumber == 3) {
//             productsAndFilters.value[0] = diapersProducts;
//             productsAndFilters.value[1] = [clothesFilterData[1]];
//           } else if (categoryNumber == 4) {
//             productsAndFilters.value[0] = foodProducts;
//             productsAndFilters.value[1] = foodFilterData;
//           } else if (categoryNumber == 5) {
//             productsAndFilters.value[0] = foodToolProducts;
//             productsAndFilters.value[1] = foodToolFilterData;
//           } else if (categoryNumber == 6) {
//             productsAndFilters.value[0] = showerToolProducts;
//             productsAndFilters.value[1] = showerToolFilterData;
//           } else if (categoryNumber == 7) {
//             productsAndFilters.value[0] = shoesProducts;
//             productsAndFilters.value[1] = [
//               clothesFilterData[1],
//               clothesFilterData[2]
//             ];
//           } else if (categoryNumber == 8) {
//             productsAndFilters.value[0] = vehiclesProducts;
//             productsAndFilters.value[1] = vehicleFilterData;
//           } else if (categoryNumber == 9) {
//             productsAndFilters.value[0] = containersProducts;
//             productsAndFilters.value[1] = containerFilterData;
//           } else {
//             productsAndFilters.value[0] = furnitureProducts;
//             productsAndFilters.value[1] = furnitureFilterData;
//           }
//           productsAndFilters.refresh();
//         }),
//         child: Container(
//           width: 100,
//           height: 27,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: selectedCategory.value == categoryNumber
//                   ? pointOEightWhiteColor.value
//                   : blackColor.value),
//           child: Center(
//               child: MyText(
//                   data: text,
//                   font: arabicFont700,
//                   size: 15,
//                   color: selectedCategory.value == categoryNumber
//                       ? whiteColor.value
//                       : halfWhiteColor.value)),
//         ));
//   });
// }
