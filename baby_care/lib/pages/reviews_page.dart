
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/star_rating_new.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import '../services/rating_chart.dart';
import '../services/models_moe.dart';
import '../services/text_field.dart';

class ProductReviewPage extends StatefulWidget {
  const ProductReviewPage(
      {super.key,
      required this.title,
      required this.price,
      required this.image});

  final String title, price, image;

  @override
  State<ProductReviewPage> createState() => _ProductReviewPageState();
}

class _ProductReviewPageState extends State<ProductReviewPage> {
  static Rx<double> stars = 0.0.obs;
  var commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(body: Obx(() {
      return Container(
        width: width,
        height: height,
        color: blackColor.value,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: ListView(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            MyText(
                                data: 'التصنيفات والمراجعات',
                                font: arabicFont700,
                                size: 25,
                                color: pointEightFiveWhiteColor.value),
                            MyText(
                                data: widget.title,
                                font: arabicFont400,
                                size: 12,
                                color: pointEightFiveWhiteColor.value),
                          ],
                        ),
                        IconButton(
                            onPressed: () => Get.back(),
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 30,
                              color: whiteColor.value,
                            ))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          RatingChart(data: data, width: 126, height: 110),
                          Column(
                            children: [
                              MyText(
                                  data: " ٤,٠",
                                  font: arabicFont700,
                                  size: 35,
                                  color: pointEightFiveWhiteColor.value),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    MyStar(size: 35),
                                  ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                    commentContainer(),
                    const SizedBox(height: 40),
                    TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<BeveledRectangleBorder>(
                                  BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                        ),
                        onPressed: (() {
                          SmartDialog.show(
                              builder: (_) {
                                return Container(
                                  width: double.maxFinite,
                                  height: 450,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(25)),
                                    color: shadedGrayColor.value,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            MyText(
                                                data: "تقييم هذا المنتج",
                                                font: arabicFont700,
                                                size: 25,
                                                color: whiteColor.value),
                                            MyText(
                                                data: widget.title,
                                                font: arabicFont400,
                                                size: 15,
                                                color: pointEightFiveWhiteColor
                                                    .value),
                                          ],
                                        ),
                                        const SizedBox(height: 40),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Obx(() {
                                              return RatingBar.builder(
                                                initialRating: stars.value,
                                                minRating: 1,
                                                direction: Axis.horizontal,
                                                allowHalfRating: false,
                                                itemCount: 5,
                                                itemSize: 55,
                                                itemPadding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3.5),
                                                itemBuilder: (context, _) =>
                                                    Icon(
                                                  Icons.star_rate_rounded,
                                                  color: whiteColor.value,
                                                ),
                                                onRatingUpdate: (rating) {
                                                  print(rating);
                                                  stars.value = rating;
                                                  print(
                                                      '${stars.value}.................');
                                                  // int star_count = rating as int;
                                                  // print(star_count);
                                                },
                                                updateOnDrag: true,
                                                textDirection:
                                                    TextDirection.rtl,
                                              );
                                            }),
                                          ],
                                        ),
                                        const SizedBox(height: 40),
                                        tField(
                                            commentController,
                                            'كتابة تعليق',
                                            englishFontMedium,
                                            TextDirection.rtl),
                                        const SizedBox(height: 40),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            TextButton(
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all<
                                                        BeveledRectangleBorder>(
                                                    BeveledRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                )),
                                              ),
                                              onPressed: (() {
                                                setState((() {
                                                  ProdectRating.add(
                                                      commentController.text,
                                                      stars.value);
                                                  commentController.clear();
                                                  stars=0.0.obs;
                                                }));
                                              }),
                                              child: Container(
                                                height: 40,
                                                width: 130,
                                                alignment: Alignment.center,
                                                child: MyText(
                                                    data: "نشر",
                                                    font: arabicFont700,
                                                    size: 25,
                                                    color: whiteColor.value),
                                              ),
                                            ),
                                            Container(
                                              height: 25,
                                              width: 1,
                                              decoration: BoxDecoration(
                                                  color: pointThreeWhiteColor
                                                      .value),
                                            ),
                                            TextButton(
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all<
                                                        BeveledRectangleBorder>(
                                                    BeveledRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                )),
                                              ),
                                              onPressed: (() {}),
                                              child: Container(
                                                height: 40,
                                                width: 130,
                                                alignment: Alignment.center,
                                                child: MyText(
                                                    data: "إلغاء",
                                                    font: arabicFont700,
                                                    size: 25,
                                                    color: whiteColor.value),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              alignment: Alignment
                                  .bottomCenter); //, clickMaskDismiss: false);
                        }),
                        child: Container(
                          width: width * 0.9,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: MyText(
                                  data: "تقييم هذا المنتج",
                                  font: arabicFont400,
                                  size: 20,
                                  color: pointEightFiveWhiteColor.value)),
                        ))
                  ]),
            ],
          ),
        ),
      );
    }));
  }


 
  
   
}

class commentContainer extends StatefulWidget {
  const commentContainer({super.key});

  @override
  State<commentContainer> createState() => _commentContainerState();
}

class _commentContainerState extends State<commentContainer> {
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Container(
            width: width,
            height: height / 2,
            child: ListView(
                children: ProdectRating.prodectCommentsAndStars
                    .map((e) => Container(
                          color: blackColor.value,
                          height: height * 0.1,
                          width: width * 0.9,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  MyText(
                                      data: '2022/9/16',
                                      //will be changeable
                                      font: arabicFont400,
                                      size: 10,
                                      color: pointEightFiveWhiteColor.value),
                                  const SizedBox(width: 15),
                                  StarRating(rate:e.stars.toInt().obs),
                                  const SizedBox(width: 15),
                                  MyText(
                                      data: 'Thamer',
                                      font: englishFontMedium,
                                      size: 15,
                                      color: pointEightFiveWhiteColor.value)
                                ],
                              ),
                              const SizedBox(height: 7),
                              MyText(
                                  data: e.comment,
                                  font: arabicFont400,
                                  size: 12,
                                  color: pointEightFiveWhiteColor.value)
                            ],
                          ),
                        ))
                    .toList()),
          )
        ],
      ),
    );
  }
}