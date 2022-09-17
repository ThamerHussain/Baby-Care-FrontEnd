import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.data,
      required this.font,
      required this.size,
      required this.color});
      
  final String data;
  final String font;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(
            height: 1.2,
            fontSize: size,
            // fontWeight: weight,
            fontFamily: font,
            color: color));
  }
}
