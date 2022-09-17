
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'services/my_text.dart';
import 'services/used_fonts_and_colors.dart';
import 'services/text_field.dart';
import 'sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var nameController = TextEditingController();

  var familyNameController = TextEditingController();
final GlobalKey<FormState> fromKey = GlobalKey<FormState>();
void validationEmailSignUp(){
  final bool valid=EmailValidator.validate(emailController.text.trim());
  if(valid){
     ScaffoldMessenger.of(context)
.showSnackBar(SnackBar(content: Text('Is Valid')));
  }else{ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('InValid Email')));}}

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blackColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView(
            children: [
              Form(key: fromKey,
                child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                            shape:
                                MaterialStateProperty.all<BeveledRectangleBorder>(
                                    BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                          ),
                          onPressed: (() {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>SignInPage()));
                          }),
                          child: MyText(
                              data: "لدي حساب",
                              font: arabicFont400,
                              size: 25,
                              color: whiteColor)),
                      SizedBox(width: 100),
                      MyText(
                          data: "Baby Care",
                          font: englishFontBold,
                          size: 30,
                          color: whiteColor),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 50, 15, 40),
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
                                color: whiteColor),
                            MyText(
                                data: 'التسجيل',
                                font: arabicFont400,
                                size: 30,
                                color: whiteColor),
                            //cause when we use one text widget
                            // to display the wrapped sentence,
                            // it will not appear properly
                          ],
                        ),
                      ],
                    ),
                  ),
                 TextFormField(decoration: InputDecoration(
                              filled: true,
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
                            controller: emailController,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: arabicFont700,
                                color: pointEightFiveWhiteColor),
                            maxLines: 1,
                            minLines: 1,
                            textInputAction: TextInputAction.next,
                            
                          ),
                          SizedBox(height:10,),
                  TextFormField(decoration: InputDecoration(
                              filled: true,
                              fillColor: pointOEightWhiteColor,
                              hintText: ' كلمة المرور',
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
                              if (value!.isEmpty || value.length<8
                              ) {
                                return " كلمة المرور اقصر من 8 احرف ";
                              } else {}
                              return null;
                              
                            }),
                            controller: passwordController,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: arabicFont700,
                                color: pointEightFiveWhiteColor),
                            maxLines: 1,
                            minLines: 1,
                            textInputAction: TextInputAction.next,
                            
                          ),
                          SizedBox(height:10,),
                  TextFormField(decoration: InputDecoration(
                              filled: true,
                              fillColor: pointOEightWhiteColor,
                              hintText: 'اﻷسم الاول ',
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
                              if (value!.isEmpty 
                                      ) {
                                return "ادخل الاسم ";
                              } else {}
                              return null;
                              
                            }),
                            controller: nameController,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: arabicFont700,
                                color: pointEightFiveWhiteColor),
                            maxLines: 1,
                            minLines: 1,
                            textInputAction: TextInputAction.next,
                            
                          ),
                          SizedBox(height:10,),
                  TextFormField(decoration: InputDecoration(
                              filled: true,
                              fillColor: pointOEightWhiteColor,
                              hintText: 'اسم العائلة ',
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
                              if (value!.isEmpty) {
                                return "ادخل أسم العائلة";
                              } else {}
                              return null;
                              
                            }),
                            controller: familyNameController,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 25,
                                fontFamily: arabicFont700,
                                color: pointEightFiveWhiteColor),
                            maxLines: 1,
                            minLines: 1,
                            textInputAction: TextInputAction.next,
                            
                          ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<BeveledRectangleBorder>(
                                  BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                        ),
                        onPressed: (() {
                          if (fromKey.currentState!.validate()) {
                                  
                                    final snackBar = SnackBar(
                                      content: Text("Submeting"));
                                      
                                  
                                      
              ;                              }
                          emailController.clear();
                          passwordController.clear();
                          nameController.clear();
                          familyNameController.clear();
                        }),
                        child: Container(
                          width: 304,
                          height: 43,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: blueColor),
                          child: Center(
                              child: MyText(
                                  data: "إنشاء حساب",
                                  font: arabicFont400,
                                  size: 20,
                                  color: pointEightFiveWhiteColor)
                        )),
                  )
                        )]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
