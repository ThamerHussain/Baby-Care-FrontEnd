import '';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.data, required this.font, required this.size, required this.color, required this.weight});
final String data;
final String font;
final double size;
final Color color;
final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(data,
                style: TextStyle(height:1.2,
                    fontSize:size,
                    fontWeight: weight,
                    fontFamily:font,
                    color: color));
  }
}

class MyIconApp extends StatelessWidget {
  const MyIconApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(child:Image.asset(
              'images/newicon.png',
              width: 300,
              height: 300,
            ));
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


    