
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'category_button.dart';
import 'doctor_info_row.dart';
import 'filter_button.dart';
import 'filter_data.dart';
import 'product_info_row.dart';
import 'products_data.dart';

final RxList doctorsAndFilters = [doctors, doctorFilterData].obs;

Expanded filtersAndDoctorsColumn() {
  print(doctorsAndFilters.value[1]);
  return Expanded(
    child: Column(
      children: [
        Container(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 45, 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: doctorsAndFilters.value[1] == null
                        ? []
                        : doctorsAndFilters.value[1]
                            .map<Padding>(
                                (List<String> filter) => filterButton(filter))
                            .toList(),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: doctorsAndFilters.value[0]
                    .map<Padding>((List<String> product) =>
                        doctorInfoRow(product[0], product[1], product[2]))
                    .toList(),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
