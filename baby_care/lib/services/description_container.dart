
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../models.dart';
import 'used_fonts_and_colors.dart';

class DescriptionContainer extends StatefulWidget {
  final String text;
  final String title;

  const DescriptionContainer({super.key, required this.text, required this.title});

  @override
  State<DescriptionContainer> createState() => _DescriptionContainerState();
}

class _DescriptionContainerState extends State<DescriptionContainer> {
  late String firstHalf;
  late String secondHalf;
  RxBool flag = true.obs;

  @override
  void initState() {
    super.initState();
    String title = widget.title;
    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 150);
      secondHalf = widget.text.substring(151, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, right: 10, left: 10),
      child: Container(
        child: secondHalf == ''
            ? Text(widget.text,
                style: TextStyle(
                    color: pointEightFiveWhiteColor,
                    fontSize: 17,
                    fontFamily: arabicFont400),
                textDirection: TextDirection.rtl)
            : Obx(() {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                            onTap: (() {
                              flag.value = !flag.value;
                            }),
                            child: flag.value
                                ? Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    size: 35,
                                    color: whiteColor,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 35,
                                    color: whiteColor,
                                  )),
                        const Spacer(),
                        MyText(data: widget.title,
                            font: arabicFont700,
                            size: 25,
                            color: whiteColor,
                            weight:FontWeight.w400,
                            )
                            
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(flag.value ? '$firstHalf...' : widget.text,
                        style: TextStyle(
                            color: pointEightFiveWhiteColor,
                            fontSize: 17,
                            fontFamily: arabicFont400),
                        textDirection: TextDirection.rtl)
                  ],
                );
              }),
      ),
    );
  }
}
