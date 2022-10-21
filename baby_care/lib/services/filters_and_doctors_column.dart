import 'package:baby_care/services/doctor_info_row.dart';
import 'package:baby_care/services/filter_data.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'filter_button.dart';

// final RxList doctorsAndFilters = [doctors, doctorFilterData].obs;
final RxList<Map<dynamic, dynamic>> doctorsData = doctors.obs;

final RxList doctorsFilters = [doctorFilterData].obs;

Expanded filtersAndDoctorsColumn() {
  // print(doctorsAndFilters.value[1]);
  return Expanded(
    child: Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 30, 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Obx(() {
                return Column(
                  children: [
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: doctorsFilters.isEmpty
                          ? []
                          : doctorsFilters[0]
                              .map<Padding>(
                                  (List<String> filter) => filterButton(filter))
                              .toList(),
                    ),
                    const SizedBox(height: 10)
                  ],
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
                    // doctorsData[0][0] == ''
                    //     ? []
                    //     :
                    doctorsData
                        .map<Padding>((Map<dynamic, dynamic> product) =>
                            doctorInfoRow(
                                product.values.elementAt(0),
                                product.values.elementAt(1),
                                product.values.elementAt(2),
                                product.values.elementAt(3),
                                // 'assets/images/3.jpg'
                            )
                    )
                        .toList(),
              );
            }),
          ),
        )
      ],
    ),
  );
}
