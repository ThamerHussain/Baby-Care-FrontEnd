
import 'package:flutter/material.dart';
import 'models.dart';
import 'services/product_profile_info_row.dart';
import 'services/description_container.dart';
import 'services/product_profile_top_icons_row.dart';
import 'services/models_moe.dart';
import 'services/products_data.dart';
import 'services/used_fonts_and_colors.dart';

class ProductProfile extends StatefulWidget {
  const ProductProfile({super.key});

  @override
  State<ProductProfile> createState() => _ProductProfileState();
}

class _ProductProfileState extends State<ProductProfile> {
  var size, width, height;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: blackColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProductProfileTopIconsRow(),
                const SizedBox(height: 40),
                const ProductInfoRow(),
                Expanded(
                    child: SingleChildScrollView(
                        child: DescriptionContainer(text: moeText, title: 'الشرح'))),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductProfileTopIconsRow()),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 25,
                            color: whiteColor,
                          )),
                      const Spacer(),
                      Column(
                        children: [
                          MyText(
                              data: "التصنيفات والمراجعات ",
                              font: arabicFont700,
                              size: 22,
                              color: pointEightFiveWhiteColor,
                              weight:FontWeight.w400,),
                          const SizedBox(height: 5),
                          MyText(
                              data: " ٤,٠",
                              font: arabicFont700,
                              size: 48,
                              color: pointEightFiveWhiteColor,
                              weight:FontWeight.w400),
                           MyStar(size: 35)
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<BeveledRectangleBorder>(
                                  BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                        ),
                        onPressed: (() {}),
                        child: Container(
                          width: width * 0.9,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                              color: blueColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                              child: MyText(
                                  data: "إضافة الى السلة",
                                  font: arabicFont400,
                                  size: 20,
                                  color: pointEightFiveWhiteColor,
                                  weight:FontWeight.w400)),
                        ))),
              ]),
        ),
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