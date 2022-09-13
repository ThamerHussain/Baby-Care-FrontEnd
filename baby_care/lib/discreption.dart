import 'package:baby_care/config.dart';
import 'package:baby_care/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscreptionContainer extends StatefulWidget {
  final String text;
  final String title;
  const DiscreptionContainer(
      {super.key, required this.title, required this.text});

  @override
  State<DiscreptionContainer> createState() => _DiscreptionContainerState();
}

class _DiscreptionContainerState extends State<DiscreptionContainer> {
  late String firstHalf;
  late String secondHalf;
  bool flage = true;
  @override
  void initState() {
    super.initState();
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
            ? Text(widget.text)
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                          onTap: (() {
                            setState(() {
                              flage = !flage;
                            });
                          }),
                          child: flage
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
                          data: widget.title,
                          font: arabicFont400,
                          size: 25,
                          color: whiteColor)
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    flage ? firstHalf : widget.text,
                    style: TextStyle(
                        color: pointEightFiveWhiteColor,
                        fontSize: 13,
                        fontFamily: arabicFont400),
                    textDirection: TextDirection.rtl,
                  )
                ],
              ),
      ),
    );
  }
}
