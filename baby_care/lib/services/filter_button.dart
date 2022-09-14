import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'used_fonts_and_colors.dart';
import 'filters_and_items_column.dart';

Padding filterButton(items) {
  String first = items.first;
  Rx<String> currentFilter = first.obs;

  return Padding(
      padding: const EdgeInsets.only(left: 55.0),
      child: Obx(
        () {
          return PopupMenuButton<String>(
              itemBuilder: (context) {
                return items.map<PopupMenuEntry<String>>((String item) {
                  return PopupMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: TextStyle(
                          fontFamily: arabicFont700,
                          fontSize: 15,
                          color: halfWhiteColor),
                    ),
                  );
                }).toList();
              },
              color: blackColor,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.arrow_drop_down_rounded, color: halfWhiteColor),
                  Text(
                    currentFilter.value,
                    style: TextStyle(
                        fontFamily: arabicFont700,
                        fontSize: 15,
                        color: halfWhiteColor),
                  ),
                ],
              ),
              onSelected: (newValue) {
                currentFilter.value = newValue;
              });
        },
      ));
}
