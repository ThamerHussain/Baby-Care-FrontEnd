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
      padding: const EdgeInsets.only(left: 55.0),
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
                    currentFilter.value == 'ذكر'
                        ? getClothesMaleProducts()
                        : currentFilter.value == 'أُنثى'
                            ? getClothesFemaleProducts()
                            : currentFilter.value == 'كبير'
                                ? getClothesLargeProducts()
                                : currentFilter.value == 'متوسط'
                                    ? getClothesMediumProducts()
                                    : currentFilter.value == 'صغير'
                                        ? getClothesSmallProducts()
                                        : currentFilter.value == 'تيشيرتات'
                                            ? getClothesTShirtProducts()
                                            : currentFilter.value == 'بجامات'
                                                ? getClothesBijamaProducts()
                                                : currentFilter.value ==
                                                        'ملابس داخلية'
                                                    ? getClothesUnderwearProducts()
                                                    : getClothesProducts();
                  } else if (selectedCategory.value == 3) {
                    currentFilter.value == 'كبير'
                        ? getDiaperLargeProducts()
                        : currentFilter.value == 'متوسط'
                            ? getDiaperMediumProducts()
                            : currentFilter.value == 'صغير'
                                ? getDiaperSmallProducts()
                                : getDiaperProducts();
                  } else if (selectedCategory.value == 4) {
                    currentFilter.value == 'حليب'
                        ? getFoodMilkProducts()
                        : currentFilter.value == 'أطعمة فورية'
                            ? getFoodInstantCerealProducts()
                            : currentFilter.value == 'أقل من ستة أشهر'
                                ? getFoodOneToSixMonthsProducts()
                                : currentFilter.value == 'أكثر من ستة أشهر'
                                    ? getFoodMoreThanSixMonthsProducts()
                                    : getFoodProducts();
                  } else if (selectedCategory.value == 5) {
                    currentFilter.value == 'ممات'
                        ? getFoodToolBabyBottleProducts()
                        : currentFilter.value == 'گلاصات'
                            ? getFoodToolCupProducts()
                            : getFoodToolsProducts();
                  } else if (selectedCategory.value == 6) {
                    currentFilter.value == 'ليَف'
                        ? getShowerToolLoofahProducts()
                        : currentFilter.value == 'شامبوهات'
                            ? getShowerToolShampooProducts()
                            : currentFilter.value == 'صابون'
                                ? getShowerToolSoapProducts()
                                : currentFilter.value == 'منشفات'
                                    ? getShowerToolTowelProducts()
                                    : getShowerToolsProducts();
                  } else if (selectedCategory.value == 7) {
                    currentFilter.value == 'ذكر'
                        ? getShoeMaleProducts()
                        : currentFilter.value == 'أُنثى'
                            ? getShoeFemaleProducts()
                            : currentFilter.value == 'كبير'
                                ? getShoeSmallProducts()
                                : currentFilter.value == 'متوسط'
                                    ? getShoeMediumProducts()
                                    : currentFilter.value == 'صغير'
                                        ? getShoeLargeProducts()
                                        : getShoesProducts();
                  } else if (selectedCategory.value == 8) {
                    currentFilter.value == 'عربانات'
                        ? getVehicleJoggerProducts()
                        : currentFilter.value == 'حجلات'
                            ? getVehicleStrollerProducts()
                            : getVehiclesProducts();
                  } else if (selectedCategory.value == 9) {
                    currentFilter.value == 'سرير ثابت'
                        ? getContainerFixedProducts()
                        : currentFilter.value == 'سرير متنقّل'
                            ? getContainerMovableProducts()
                            : getContainersProducts();
                  } else {
                    currentFilter.value == 'مخدات'
                        ? getFurniturePillowProducts()
                        : currentFilter.value == 'منادر'
                            ? getFurnitureMattressProducts()
                            : currentFilter.value == 'أغطية'
                                ? getFurnitureCoverProducts()
                                : getFurnitureProducts();
                  }
                } else {
                  currentFilter.value == 'بغداد'
                      ? getDoctorsFromBaghdad()
                      : currentFilter.value == 'البصرة'
                          ? getDoctorsFromBasrah()
                          : currentFilter.value == 'الموصل'
                              ? getDoctorsFromMosul()
                              : currentFilter.value == 'أُخرى'
                                  ? getDoctorsFromOther()
                                  : currentFilter.value == 'ذكر'
                                      ? getDoctorsMale()
                                      : currentFilter.value == 'أُنثى'
                                          ? getDoctorsFemale()
                                          : currentFilter.value == 'التوفّر'
                                              ? getDoctorsThatAvailable()
                                              : currentFilter.value ==
                                                      'فقط المتوفّر'
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
