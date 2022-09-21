import 'package:baby_care/services/products_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'filter_button.dart';
import 'product_info_row.dart';

final RxList productsAndFilters = [diapersProducts, null].obs;

Obx filtersAndItemsColumn() {
  return Obx(() {
    print(productsAndFilters.value[1]);
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: productsAndFilters.value[1] == null
                      ? []
                      : productsAndFilters.value[1]
                          .map<Padding>(
                              (List<String> filter) => filterButton(filter))
                          .toList(),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: productsAndFilters.value[0]
                    .map<Padding>((List<String> product) =>
                        productInfoRow(product[0], product[1], product[2]))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  });
}
