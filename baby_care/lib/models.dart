import 'package:baby_care/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'icons/material_icons.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.data, required this.font, required this.size, required this.color});
  final String data;
  final String font;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(data,
        style: TextStyle(height:1.2,
            fontSize:size,
            // fontWeight: weight,
            fontFamily:font,
            color: color),textDirection:TextDirection.rtl);
  }
}

class SplashIcon1 extends StatelessWidget {
  const SplashIcon1({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(child:Image.asset(
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
    return Icon(icon.fluent_emoji_high_contrast_baby_angel, size: 70,
    color: whiteColor,);
  }
}

final kHeightSizedBox10 = const SizedBox(
  height: 10,
);


Widget defaultFormField({
  required TextEditingController controller,required String hinttext,required String labletext,
  //required TextInputType type,
  Function? onSubmit,
  bool isClicked = true,
  //Function? onTap,
  //required Function validate,
  //required String label,
  //required IconData prefix,
  //IconData? suffix,
  //Function? suffixPressed,
  //Function? onEditingComplete,
  //FocusNode? foucs,
  TextInputAction? next,
  //UnderlineInputBorder? errorBorder,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(height:70,child:TextFormField(
        controller: controller,
        // keyboardType: type,
        //focusNode: foucs,
        textInputAction: next,

        onFieldSubmitted: (s) {
          onSubmit!(s);
        },
        onChanged: (s) {

        },

        decoration: InputDecoration(
          //labelText: label,
          // prefixIcon: Icon(
          //   prefix,
          // ),
          // suffixIcon: suffix != null
          //     ? IconButton(
          //         onPressed: () {
          //          // suffixPressed!();
          //         },
          //         icon: Icon(
          //           suffix,
          //         ),
          //       )
          //     : null,
          hintTextDirection:TextDirection.rtl,
          hintText:hinttext ,
          labelText: labletext,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      )),
    );


