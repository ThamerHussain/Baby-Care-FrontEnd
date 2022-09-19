import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'filter_data.dart';
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
