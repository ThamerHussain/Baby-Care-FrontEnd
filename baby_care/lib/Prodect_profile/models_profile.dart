import 'package:baby_care/config.dart';
import 'package:baby_care/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyStar extends StatelessWidget {
  const MyStar({super.key, required this.size});
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star_rate_rounded,
          size: size,
          color: Colors.amber,
        ),Icon(
          Icons.star_rate_rounded,
          size: size,
          color: Colors.amber,
        ),Icon(
          Icons.star_rate_rounded,
          size: size,
          color: Colors.amber,
        ),Icon(
          Icons.star_rate_rounded,
          size: size,
          color: Colors.amber,
        ),Icon(
          Icons.star_rate_rounded,
          size: size,
          color: Colors.amber,
        ),
      ],
    );
  }
}





class ImageProdectProfil extends StatelessWidget {
  const ImageProdectProfil({super.key,required this.image});
final String image; 
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        image,
                        width: 160,
                        height: 160,
                      ));
  }
}