import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';
class MyStar extends StatelessWidget {
  const MyStar({super.key, required this.size});

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
        ),
        Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),
        Icon(
          Icons.star_rate_rounded,
          size: size,
          color: color,
        ),
      ],
    );
  }
}

class ImageProductProfile extends StatelessWidget {
  const ImageProductProfile({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          image,
          // width: 171,
          // height: 171,
          width: width * 0.43 ,
          height: width * 0.45,
        ));
  }
}
