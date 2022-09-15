import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../models.dart';
import '../services/used_fonts_and_colors.dart';

class DiscreptionContainer extends StatefulWidget {
  final String text, discreptions;

  const DiscreptionContainer(
      {super.key, required this.text, required this.discreptions});

  @override
  State<DiscreptionContainer> createState() => _DiscreptionContainerState();
}

class _DiscreptionContainerState extends State<DiscreptionContainer> {
  late RxString firstHalf;
  late RxString secondHalf;
  RxBool flage = true.obs;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 150).obs;
      secondHalf = widget.text.substring(151, widget.text.length).obs;
    } else {
      firstHalf = widget.text.obs;
      secondHalf = "".obs;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, right: 10, left: 10),
      child: Container(
        child: secondHalf == ''
            ? Text(widget.text)
            : Obx(() {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: (() {
                              flage.value = !flage.value;
                            }),
                            child: flage.value
                                ? Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    size: 35,
                                    color: whiteColor,
                                  )
                                : Icon(
                                    Icons.arrow_back_ios_new,
                                    size: 25,
                                    color: whiteColor,
                                  )),
                        Spacer(),
                        MyText(
                            data: widget.discreptions,
                            font: arabicFont400,
                            size: 20,
                            color: whiteColor,
                            weight: FontWeight.w400)
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      flage.value ? firstHalf + '. . . .' : widget.text,
                      style: TextStyle(
                          color: pointEightFiveWhiteColor,
                          fontSize: 15,
                          fontFamily: arabicFont400),
                      textDirection: TextDirection.rtl,
                    )
                  ],
                );
              }),
      ),
    );
  }
}
