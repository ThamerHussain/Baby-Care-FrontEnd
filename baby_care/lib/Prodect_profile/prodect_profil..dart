import 'package:baby_care/Prodect_profile/discreption.dart';
import 'package:baby_care/Prodect_profile/iconButton_part1.dart';
import 'package:baby_care/Prodect_profile/models_profile.dart';
import 'package:baby_care/Prodect_profile/ImageAndName.dart.dart';
import 'package:baby_care/config.dart';
import 'package:baby_care/models.dart';
import 'package:baby_care/reviews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProdectProfil extends StatefulWidget {
  const ProdectProfil({super.key});

  @override
  State<ProdectProfil> createState() => _ProdectProfilState();
}

class _ProdectProfilState extends State<ProdectProfil> {
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(mainAxisAlignment:MainAxisAlignment.spaceAround,children: [
              iconButtonProdectPart1(),
              SizedBox(
                height: 40,
              ),
            profilProdectPart2(),
              Expanded(
                  child: SingleChildScrollView(
                      child: DiscreptionContainer(
                          text:
                              'والله والله والله وانت مامحلفني هذا التيشيرت الا يخبل خاماية غير تركي ماركة فول ليكرا تشك شك شنو ثلج  بالصيف ونار بالشتا ولاعبالك ب3 وونص اخذهة وبيهة ضمان شهرين لا تنشك ولا تنفتك غير اصلية مال عمك اخذهة وخل ابنك يتهنة'))),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ReviewProdect()),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 25,
                          color: whiteColor,
                        )),
                    Spacer(),
                    Column(
                      children: [
                        MyText(
                            data: "التصنيفات والمراجعات ",
                            font: arabicFont700,
                            size: 22,
                            color: whiteColor),SizedBox(height:15,),
                        MyText(data: " ٤,٠", font: arabicFont700, size: 35, color:whiteColor),
                        MyStar(size: 35)
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: TextButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<BeveledRectangleBorder>(
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
                                size: 25,
                                color: whiteColor)),
                      ))),
            ]),
        ),
        
      ),
    );
    
  }
}

//  Widget BuildiconButton({required Function?onPressed,required Icon})
//  =>IconButton(onPressed: (){}, icon: Icon);


