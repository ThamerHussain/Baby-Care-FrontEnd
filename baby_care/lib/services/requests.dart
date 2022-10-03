import 'dart:convert';
import 'dart:math';
import 'package:baby_care/pages/favorite_page.dart';
import 'package:baby_care/services/filters_and_doctors_column.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import '../pages/main_page.dart';
import '../pages/my_orders_page.dart';
import '../pages/search_page.dart';
import 'filters_and_products_column.dart';

String baseURL = 'https://thamer.pythonanywhere.com/api/endpoints/';
// String localURL = 'http://10.0.2.2:8000/api/endpoints/';

getProduct({required int id}) async {
  // FocusScope.of(Get.context!).unfocus();
  try {
    Response res = await Dio().post(
      '${baseURL}display product',
      data: jsonEncode({'product_id': 1}),
    );
    print('done');
    Map data = Map.from(res.data);
    print(data.values.elementAt(0));
    return data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getSuggestedProducts() async {

  try {
  Response res = await Dio()
      .get('${baseURL}display suggestions');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getClothesProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}default_clothes_without_any_choices_from_user');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getDiaperProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}diaper_by_default');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getFoodProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}food_by_default');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getFoodToolsProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}all_FoodTool');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getShowerToolsProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}ShowerTool_by_default');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getShoesProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}all_shoe_without_user_choices');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getVehiclesProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}all_Vehicle_default');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getContainersProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}all_Container');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}

void getFurnitureProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}all_Furniture');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}









void getClothesMaleProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}clothes_only_Male_and_the_size_and_category_none_from_user');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleProducts() async {
  try {
  Response res = await Dio()
      .get('${baseURL}clothes_only_Female_and_the_size_and_category_none_from_user');
  List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
  productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesSmallProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothes_only_Small_and_the_sex_and_category_none_from_user');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMediumProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothes_only_Medium_and_the_sex_and_category_none_from_user');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesLargeProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothes_only_Large_and_the_sex_and_category_none_from_user');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesBijamaProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}ClotheSubCategory_only_Bijama_and_the_sex_and_size_none_from_user');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesTShirtProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}ClotheSubCategory_only_Tshirt_and_the_sex_and_size_none_from_user');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesUnderwearProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}ClotheSubCategory_only_Underwaer_and_the_sex_and_size_none_from_user');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleSmallProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_small_category_none');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleSmallProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_female_size_small_category_none');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleMediumProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_mediuem_category_none');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleMediumProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_mediuem_category_none');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleLargeProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Male_size_Large_category_none');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleLargeProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_female_size_Large_category_none');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleSmallBijamaProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_small_category_Bijama');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleSmallTShirtProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_small_category_T_Shirt');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleSmallUnderwearProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_small_category_Underwaer');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleMediumBijamaProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_medium_category_Bijama');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleMediumTShirtProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_medium_category_T_Shirt');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleMediumUnderwearProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_medium_category_Underwaer');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleLargeBijamaProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_Large_category_Bijama');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleLargeTShirtProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_Large_category_T_Shirt');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesMaleLargeUnderwearProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_male_size_Large_category_Underwaer');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}




void getClothesFemaleSmallBijamaProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_Small_category_Bijama');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleSmallTShirtProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_Small_category_tshirt');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleSmallUnderwearProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_Small_category_Underwaer');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleMediumBijamaProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_medium_category_Bijama');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleMediumTShirtProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_medium_category_tshirt');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleMediumUnderwearProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_medium_category_Underwaer');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleLargeBijamaProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_Large_category_Bijama');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleLargeTShirtProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_Large_category_tshirt');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getClothesFemaleLargeUnderwearProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}clothe_sex_Female_size_Large_category_Underwaer');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}











void getDiaperSmallProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}diaper_by_size_small');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getDiaperMediumProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}diaper_by_size_medium');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getDiaperLargeProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}diaper_by_size_Large');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}











void getFoodOneToSixMonthsProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}food_by_age_One_To_Six_Months');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void getFoodMoreThanSixMonthsProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}food_by_age_More_Than_Six_Months');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getFoodMilkProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}food_by_milk_and_age_none');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getFoodMilkOneToSixMonthsProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}food_by_milk_and_age_One_To_Six_Months');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getFoodMilkMoreThanSixMonthsProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}food_by_milk_and_age_More_Than_Six_Months');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getFoodInstantCerealProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}food_by_Instant_Cereal_and_age_none');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getFoodInstantCerealOneToSixMonthsProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}food_by_Instant_Cereal_and_age_One_To_Six_Months');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getFoodInstantCerealMoreThanSixMonthsProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}food_by_Instant_Cereal_and_age_More_Than_Six_Months');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}













void getFoodToolCupProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}FoodTool_Cup');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}




void getFoodToolBabyBottleProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}FoodTool_Baby_Bottle');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShowerToolSoapProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}ShowerTool_by_soap');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShowerToolTowelProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}ShowerTool_by_Towel');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}







void getShowerToolLoofahProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}ShowerTool_by_Loofah');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShowerToolShampooProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}ShowerTool_by_Shampoo');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShoeMaleProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_sex_male_only');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}







void getShoeFemaleProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_sex_Female_only');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShoeSmallProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_size_Small');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShoeMediumProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_size_Medium');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}







void getShoeLargeProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_size_Large');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShoeFemaleSmallProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_with_sex_female_and_Size_Small');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShoeFemaleMediumProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_with_sex_female_and_Size_Medium');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}







void getShoeFemaleLargeProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_with_sex_female_and_Size_Large');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShoeMaleSmallProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_with_sex_Male_and_Size_Small');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getShoeMaleMediumProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_with_sex_Male_and_Size_Medium');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}







void getShoeMaleLargeProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_shoe_with_with_sex_Male_and_Size_Large');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getVehicleJoggerProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}Vehicle_only_Jogger');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getVehicleStrollerProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}Vehicle_only_Stroller');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}






void getContainerFixedProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}Container_with_Fixed');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getContainerMovableProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}Container_with_Movable');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}






void getFurnitureCoverProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_Furniture_cover');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getFurniturePillowProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_Furniture_Pillow');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}






void getFurnitureMattressProducts() async {
  try {
    Response res = await Dio()
        .get('${baseURL}all_Furniture_Mattress');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    productsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}
















void getDoctors() async {
  try {
    // print('111111111111111111111111111');
    Response res = await Dio()
        .get('${baseURL}display all doctor');
    // print(res.data);
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
    dataItemsForSearch.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(320, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



void getDoctorsFromBaghdad() async {
  try {
    Response res = await Dio()
        .get('${baseURL}doctors from Baghdad');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}





void getDoctorsFromBasrah() async {
  try {
    Response res = await Dio()
        .get('${baseURL}doctors from Basrah');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void getDoctorsFromMosul() async {
  try {
    Response res = await Dio()
        .get('${baseURL}doctors from Mosul');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void getDoctorsFromOther() async {
  try {
    Response res = await Dio()
        .get('${baseURL}doctors from Other');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void getDoctorsMale() async {
  try {
    Response res = await Dio()
        .get('${baseURL}doctors with sex Male');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void getDoctorsFemale() async {
  try {
    Response res = await Dio()
        .get('${baseURL}doctors with sex Female');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void getDoctorsThatAvailable() async {
  try {
    Response res = await Dio()
        .get('${baseURL}doctors that Available');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void getDoctorsThatNotAvailable() async {
  try {
    Response res = await Dio()
        .get('${baseURL}doctors that NotAvailable');
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    doctorsData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}



















String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InhAeC5jb20ifQ.IoZqvL0jehQlLa34bJQkGNcLTxKqNxw4oBNEOPZc0AE';

void getFavorite() async {
  try {
    Response res = await Dio()
        .get('${baseURL}get_the_fav_prod_from_the_current_user',
    options: Options(headers: {'Authorization': 'Bearer $token'}));
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    favoriteData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void addToFavorite(name) async {
  try {
    Dio().post('${baseURL}Create_Favourite',
    data:  jsonEncode({'name': name}),
    options: Options(headers: {'Authorization': 'Bearer $token'}));
    // List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    favoriteData.refresh();
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}


void removeFromFavorite(name) async {
  try {
    Dio().post('${baseURL}Remove_Favourite',
        data:  jsonEncode({'name': name}),
    options: Options(headers: {'Authorization': 'Bearer $token'}));
    // List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    favoriteData.refresh();
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}




void addToCart(name) async {
  try {
    Dio().post('${baseURL}Add_item_to_cart',
        data:  jsonEncode({'name': name}),
    options: Options(headers: {'Authorization': 'Bearer $token'}));
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}




void getCart() async {
  try {
    Response res = await Dio().get('${baseURL}get_the_cart_from_the_current_user',
    options: Options(headers: {'Authorization': 'Bearer $token'}));
    List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
    cartData.value = data;
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}




void incCartQuantity(name) async {
  try {
    Dio().put('${baseURL}change_qu_+',
        data:  jsonEncode({'name': name}),
    options: Options(headers: {'Authorization': 'Bearer $token'}));
    cartData.refresh();
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}




void decCartQuantity(name) async {
  try {
    Dio().put('${baseURL}change_qu_-',
        data:  jsonEncode({'name': name}),
    options: Options(headers: {'Authorization': 'Bearer $token'}));
    cartData.refresh();
  } catch (e) {
    Get.showSnackbar(GetSnackBar(
      title: 'error',
      message: e.toString().substring(0, min(32, e.toString().length)),
      duration: const Duration(seconds: 3),
    ));
  }
}






// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
//
//
//
//
//
// void getProducts() async {
//   try {
//     Response res = await Dio()
//         .get('${baseURL}');
//     List<Map<dynamic, dynamic>> data = List<Map<dynamic, dynamic>>.from(res.data);
//     productsData.value = data;
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }






















































// Future getSuggestedProducts() async {
//   try {
//     print(11111111111111);
//     Response res = await Dio()
//         .get('${baseURL}display suggestions');
//     print('done');
//     print(res);
//     print('after res');
//     List<Map> data = List<Map>.from(res.data);
//     // List<List<String>> data1 = new Map<String, dynamic>.from(res.value);;
//     // List<List<String>>? data = data1.cast<List<String>>();
//     print(data);
//     print(data.runtimeType);
//     // print(data.values.elementAt(0));
//     return List<Map<dynamic, dynamic>>.from(data);
//     print('doneeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
//   } catch (e) {
//     Get.showSnackbar(GetSnackBar(
//       title: 'error',
//       message: e.toString().substring(0, min(32, e.toString().length)),
//       duration: const Duration(seconds: 3),
//     ));
//   }
// }
