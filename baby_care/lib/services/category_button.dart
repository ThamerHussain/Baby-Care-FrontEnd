import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'used_fonts_and_colors.dart';
import 'package:baby_care/main_page.dart';
import 'filter_data.dart';
import 'filters_and_items_column.dart';
import 'my_text.dart';

RxInt selectedCategory = 1.obs;

Obx categoryButton(text, int categoryNumber) {
  return Obx(() {
    return TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<BeveledRectangleBorder>(
              BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
        ),
        onPressed: (() {
          selectedCategory.value = categoryNumber;
          if (categoryNumber == 1) {
            productsAndFilters.value[0] = suggestionsProducts;
            productsAndFilters.value[1] = null;
          } else if (categoryNumber == 2) {
            productsAndFilters.value[0] = clothesProducts;
            productsAndFilters.value[1] = clothesFilterData;
          } else if (categoryNumber == 3) {
            productsAndFilters.value[0] = diapersProducts;
            productsAndFilters.value[1] = [clothesFilterData[1]];
          } else if (categoryNumber == 4) {
            productsAndFilters.value[0] = foodProducts;
            productsAndFilters.value[1] = foodFilterData;
          } else if (categoryNumber == 5) {
            productsAndFilters.value[0] = foodToolProducts;
            productsAndFilters.value[1] = foodToolFilterData;
          } else if (categoryNumber == 6) {
            productsAndFilters.value[0] = showerToolProducts;
            productsAndFilters.value[1] = showerToolFilterData;
          } else if (categoryNumber == 7) {
            productsAndFilters.value[0] = shoesProducts;
            productsAndFilters.value[1] = [
              clothesFilterData[1],
              clothesFilterData[2]
            ];
          } else if (categoryNumber == 8) {
            productsAndFilters.value[0] = vehiclesProducts;
            productsAndFilters.value[1] = vehicleFilterData;
          } else if (categoryNumber == 9) {
            productsAndFilters.value[0] = containersProducts;
            productsAndFilters.value[1] = containerFilterData;
          } else {
            productsAndFilters.value[0] = furnitureProducts;
            productsAndFilters.value[1] = furnitureFilterData;
          }
          productsAndFilters.refresh();
        }),
        child: Container(
          width: 100,
          height: 27,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: selectedCategory.value == categoryNumber
                  ? pointOEightWhiteColor
                  : blackColor),
          child: Center(
              child: MyText(
                  data: text,
                  font: arabicFont700,
                  size: 15,
                  color: selectedCategory.value == categoryNumber
                      ? whiteColor
                      : halfWhiteColor)),
        ));
  });
}
