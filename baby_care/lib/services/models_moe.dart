
import 'package:flutter/material.dart';

import 'used_fonts_and_colors.dart';

class MyStar extends StatelessWidget {
  MyStar({super.key, required this.size});
  final double size;
  final Color color = orangeColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),
      ],
    );
  }
}





class ImageProductProfile extends StatelessWidget {
  const ImageProductProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          'assets/images/2.jpg',
          width: 171,
          height: 171,
        ));
  }
}