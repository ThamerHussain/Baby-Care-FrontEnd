import 'package:baby_care/pages/main_page.dart';
import 'package:baby_care/services/category_button.dart';
import 'package:baby_care/services/requests.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'filter_data.dart';
import 'filters_and_products_column.dart';
import 'used_fonts_and_colors.dart';

Padding filterButton(items) {
  String first = items.first;
  Rx<String> currentFilter = first.obs;

  Rx<Color> backgroundColor = blackColor.value.obs;
  Rx<Color> textColor = halfWhiteColor.value.obs;

  return Padding(
      padding: const EdgeInsets.only(left: 35.0),
      child: Obx(
        () {
          return PopupMenuButton<String>(
              itemBuilder: (context) {
                return items.map<PopupMenuEntry<String>>((String item) {
                  // print(item);
                  return PopupMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                          fontFamily: arabicFont700,
                          fontSize: 15,
                          color: halfWhiteColor.value),
                    ),
                  );
                }).toList();
              },
              color: blackColor.value,
              // child: ColoredBox(
              //   color: backgroundColor.value,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_drop_down_rounded, color: textColor.value),
                  Text(
                    currentFilter.value,
                    style: TextStyle(
                        fontFamily: arabicFont700,
                        fontSize: 15,
                        color: textColor.value),
                  ),
                ],
              ),
              // ),
              onSelected: (newValue) {
                currentFilter.value = newValue;

                if (isProductPage.isTrue) {
                  if (selectedCategory.value == 2) {
                    currentFilter.value == '??????'
                        ? getClothesMaleProducts()
                        : currentFilter.value == '??????????'
                            ? getClothesFemaleProducts()
                            : currentFilter.value == '????????'
                                ? getClothesLargeProducts()
                                : currentFilter.value == '??????????'
                                    ? getClothesMediumProducts()
                                    : currentFilter.value == '????????'
                                        ? getClothesSmallProducts()
                                        : currentFilter.value == '????????????????'
                                            ? getClothesTShirtProducts()
                                            : currentFilter.value == '????????????'
                                                ? getClothesBijamaProducts()
                                                : currentFilter.value ==
                                                        '?????????? ????????????'
                                                    ? getClothesUnderwearProducts()
                                                    : getClothesProducts();
                  } else if (selectedCategory.value == 3) {
                    currentFilter.value == '????????'
                        ? getDiaperLargeProducts()
                        : currentFilter.value == '??????????'
                            ? getDiaperMediumProducts()
                            : currentFilter.value == '????????'
                                ? getDiaperSmallProducts()
                                : getDiaperProducts();
                  } else if (selectedCategory.value == 4) {
                    currentFilter.value == '????????'
                        ? getFoodMilkProducts()
                        : currentFilter.value == '?????????? ??????????'
                            ? getFoodInstantCerealProducts()
                            : currentFilter.value == '?????? ???? ?????? ????????'
                                ? getFoodOneToSixMonthsProducts()
                                : currentFilter.value == '???????? ???? ?????? ????????'
                                    ? getFoodMoreThanSixMonthsProducts()
                                    : getFoodProducts();
                  } else if (selectedCategory.value == 5) {
                    currentFilter.value == '????????'
                        ? getFoodToolBabyBottleProducts()
                        : currentFilter.value == '????????????'
                            ? getFoodToolCupProducts()
                            : getFoodToolsProducts();
                  } else if (selectedCategory.value == 6) {
                    currentFilter.value == '????????'
                        ? getShowerToolLoofahProducts()
                        : currentFilter.value == '????????????????'
                            ? getShowerToolShampooProducts()
                            : currentFilter.value == '??????????'
                                ? getShowerToolSoapProducts()
                                : currentFilter.value == '????????????'
                                    ? getShowerToolTowelProducts()
                                    : getShowerToolsProducts();
                  } else if (selectedCategory.value == 7) {
                    currentFilter.value == '??????'
                        ? getShoeMaleProducts()
                        : currentFilter.value == '??????????'
                            ? getShoeFemaleProducts()
                            : currentFilter.value == '????????'
                                ? getShoeSmallProducts()
                                : currentFilter.value == '??????????'
                                    ? getShoeMediumProducts()
                                    : currentFilter.value == '????????'
                                        ? getShoeLargeProducts()
                                        : getShoesProducts();
                  } else if (selectedCategory.value == 8) {
                    currentFilter.value == '??????????????'
                        ? getVehicleJoggerProducts()
                        : currentFilter.value == '??????????'
                            ? getVehicleStrollerProducts()
                            : getVehiclesProducts();
                  } else if (selectedCategory.value == 9) {
                    currentFilter.value == '???????? ????????'
                        ? getContainerFixedProducts()
                        : currentFilter.value == '???????? ????????????'
                            ? getContainerMovableProducts()
                            : getContainersProducts();
                  } else {
                    currentFilter.value == '??????????'
                        ? getFurniturePillowProducts()
                        : currentFilter.value == '??????????'
                            ? getFurnitureMattressProducts()
                            : currentFilter.value == '??????????'
                                ? getFurnitureCoverProducts()
                                : getFurnitureProducts();
                  }
                } else {
                  currentFilter.value == '??????????'
                      ? getDoctorsFromBaghdad()
                      : currentFilter.value == '????????????'
                          ? getDoctorsFromBasrah()
                          : currentFilter.value == '????????????'
                              ? getDoctorsFromMosul()
                              : currentFilter.value == '??????????'
                                  ? getDoctorsFromOther()
                                  : currentFilter.value == '??????'
                                      ? getDoctorsMale()
                                      : currentFilter.value == '??????????'
                                          ? getDoctorsFemale()
                                          : currentFilter.value == '??????????????'
                                              ? getDoctorsThatAvailable()
                                              : currentFilter.value ==
                                                      '?????? ????????????????'
                                                  ? getDoctorsThatNotAvailable()
                                                  : getFurnitureProducts();
                }

                backgroundColor.value =
                    filterTitles.contains(currentFilter.value)
                        ? blackColor.value
                        : pointOEightWhiteColor.value;
                textColor.value = filterTitles.contains(currentFilter.value)
                    ? halfWhiteColor.value
                    : whiteColor.value;
              });
        },
      ));
}
