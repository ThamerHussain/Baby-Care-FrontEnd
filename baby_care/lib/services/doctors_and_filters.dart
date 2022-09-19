import 'package:baby_care/services/doctor_info_row.dart';
import 'package:baby_care/services/filter_data.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'filter_button.dart';

final RxList doctorsAndFilters = [doctors, doctorFilterData].obs;

Expanded filtersAndDoctorsColumn() {
  print(doctorsAndFilters.value[1]);
  return Expanded(
    child: Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 45, 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: doctorsAndFilters.value[1] == null
                        ? []
                        : doctorsAndFilters.value[1]
                            .map<Padding>(
                                (List<String> filter) => filterButton(filter))
                            .toList(),
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: doctorsAndFilters.value[0]
                  .map<Padding>((List<String> product) =>
                      doctorInfoRow(product[0], product[1], product[2]))
                  .toList(),
            ),
          ),
        )
      ],
    ),
  );
}
