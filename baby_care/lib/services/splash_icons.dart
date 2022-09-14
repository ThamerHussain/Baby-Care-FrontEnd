import 'package:flutter/material.dart';
import 'package:baby_care/icons/material_icons.dart';
import 'used_fonts_and_colors.dart';

class SplashIcon1 extends StatelessWidget {
  const SplashIcon1({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: Image.asset(
      'assets/images/first_baby_img.png',
      width: 70,
      height: 70,
    ));
  }
}

class SplashIcon2 extends StatelessWidget {
  const SplashIcon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(splashIcon.fluent_emoji_high_contrast_baby_angel,
        size: 70, color: whiteColor);
  }
}
