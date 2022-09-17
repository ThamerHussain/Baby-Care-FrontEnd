import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'services/models.dart';
import 'services/text_field.dart';
import 'services/used_fonts_and_colors.dart';
import 'sign_up_page.dart';

class SignInPage extends StatefulWidget {

  SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  

  var signInEmailController = TextEditingController();

  var signInPasswordController = TextEditingController();

// void validationEmail(){
//   final bool valid=EmailValidator.validate(signInEmailController.text.trim());
//   if(valid){
//      ScaffoldMessenger.of(context)
// .showSnackBar(SnackBar(content: Text('Is Valid')));
//   }else{ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('InValid Email')));}}

  @override
  Widget build(BuildContext context) {
     final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: Container(
        color: blackColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Form(
                key: fromKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 23.0),
                            child: MyText(
                              data: "Baby Care",
                              font: englishFontBold,
                              size: 30,
                              color: whiteColor,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 50, 15, 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MyText(
                                    data: 'يُرجى إدخال معلومات',
                                    font: arabicFont400,
                                    size: 30,
                                    color: whiteColor,
                                    weight: FontWeight.w400),
                                MyText(
                                  data: 'تسجيل الدخول',
                                  font: arabicFont400,
                                  size: 30,
                                  color: whiteColor,
                                  weight: FontWeight.w400,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(decoration: InputDecoration(
                            
                            fillColor: pointOEightWhiteColor,
                            hintText: 'البريد الألكتروني',
                            suffix: SizedBox(width: 10),
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: TextStyle(
                                fontSize: 30,
                                fontFamily: arabicFont400,
                                color: pointThreeWhiteColor),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),
                          ),
                          validator: ((value) {
                            if (value!.isEmpty ||
                                !RegExp('^[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+.[a-z]')
                                    .hasMatch(value)) {
                              return " ادخل بريد الكتروني صحيح ";
                            } else {}
                            return null;
                            
                          }),
                          controller: signInEmailController,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: arabicFont700,
                              color: pointEightFiveWhiteColor),
                          maxLines: 1,
                          minLines: 1,
                          textInputAction: TextInputAction.next,
                          
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(decoration: InputDecoration(
                            
                            fillColor: pointOEightWhiteColor,
                            hintText: 'كلمة المرور ',
                            suffix: SizedBox(width: 10),
                            hintTextDirection: TextDirection.rtl,
                            hintStyle: TextStyle(
                                fontSize: 30,
                                fontFamily: arabicFont400,
                                color: pointThreeWhiteColor),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide.none,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide:  BorderSide(
                                color: Colors.red,
                                width: 1,
                              ),
                            ),
                          ),
                          validator: ((value) {
                            if (value!.isEmpty || value.length<8
                            ) {
                              return " كلمة المرور اقصر من 8 احرف ";
                            } else {}
                            return null;
                            
                          }),
                          controller: signInPasswordController,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: arabicFont700,
                              color: pointEightFiveWhiteColor),
                          maxLines: 1,
                          minLines: 1,
                          textInputAction: TextInputAction.next,
                          
                        ),
                      )
                      ,
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 23),
                              child: TextButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            BeveledRectangleBorder>(
                                        BeveledRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                  ),
                                  onPressed: (() {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignUpPage()));
                                  }),
                                  child: MyText(
                                    data: "إنشاء حساب",
                                    font: arabicFont400,
                                    size: 25,
                                    color: whiteColor,
                                    weight: FontWeight.w400,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      BeveledRectangleBorder>(
                                  BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                            ),
                            onPressed: (() {
                              if (fromKey.currentState!.validate()) {
                                
                                  final snackBar = SnackBar(
                                    content: Text("Submeting"));
                                    
                                
                                    
;                              }
                              ;
                              signInEmailController.clear();
                              signInPasswordController.clear();
                            }),
                            child: Container(
                              width: 304,
                              height: 43,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: blueColor),
                              child: Center(
                                  child: MyText(
                                      data: 'تسجيل دخول',
                                      font: arabicFont400,
                                      size: 22,
                                      color: whiteColor,
                                      weight: FontWeight.w400)),
                            )),
                      )
                    ]),
              ),
            ],
          ),
        ),
     ),
    );
  }
}
