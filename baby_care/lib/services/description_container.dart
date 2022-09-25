import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class DescriptionContainer extends StatefulWidget {
  final String text, title;

  const DescriptionContainer(
      {super.key, required this.text, required this.title});

  @override
  State<DescriptionContainer> createState() => _DescriptionContainerState();
}

class _DescriptionContainerState extends State<DescriptionContainer> {
  late RxString firstHalf;
  late RxString secondHalf;
  RxBool flag = true.obs;

  @override
  void initState() {
    super.initState();
    String title = widget.title;
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
      child: Obx(() {
        return Container(
          child: secondHalf.value == ''
              ? Text(widget.text,
                  style: TextStyle(
                      color: pointEightFiveWhiteColor.value,
                      fontSize: 15,//17,
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
                                      color: whiteColor.value,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up,
                                      size: 35,
                                      color: whiteColor.value,
                                    )),
                          const Spacer(),
                          MyText(
                              data: widget.title,
                              font: arabicFont700,
                              size: 25,
                              color: whiteColor.value)
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(flag.value ? '$firstHalf...' : widget.text,
                          style: TextStyle(
                              color: pointEightFiveWhiteColor.value,
                              fontSize: 15.5,//17,
                              fontFamily: arabicFont400),
                          textDirection: TextDirection.rtl)
                    ],
                  );
                }),
        );
      }),
    );
  }
}
