
import 'package:flutter/material.dart';
import "package:baby_care/Prodect_profile/models_profile.dart";
import '../Prodect_profile/models_profile.dart';
import '../models.dart';
import 'models_moe.dart';
import 'used_fonts_and_colors.dart';

class ProductInfoRow extends StatelessWidget {
  const ProductInfoRow({super.key});

  @override
  Widget build(BuildContext context) {
    var size, width, height;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.4,
            height: height * 0.2,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Flexible(
                                child: Text('تيشيرت اليوم الأول',
                                    style: TextStyle(
                                        color: whiteColor,
                                        fontSize: 24,
                                        fontFamily: arabicFont700),
                                    textAlign: TextAlign.end),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          MyText(
                              data: "3,500 IQD",
                              font: englishFontMedium,
                              size: 20,
                              color: whiteColor,
                              weight: FontWeight.w400,),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:[MyStar(size: size)],
                          )
                        ],
                      ),
                    ),
                  )
                ]),
          ),
          const SizedBox(width: 20),
          const ImageProductProfile()
        ],
      ),
    );
  }
}


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