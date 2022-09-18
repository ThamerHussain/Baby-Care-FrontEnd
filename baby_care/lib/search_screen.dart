import 'package:baby_care/doctor_profile/dovtor_profile.dart';
import 'package:baby_care/models.dart';
import 'package:baby_care/services/products_data.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

class SearchScrean extends StatefulWidget {
  SearchScrean({super.key});

  @override
  State<SearchScrean> createState() => _SearchScreanState();
}

class _SearchScreanState extends State<SearchScrean> {
  List<List<String>> found = [];


  void runfilter(String enterWord) {
    List<List<String>> result = [];
    if (enterWord.isEmpty) {
      Center(child: Center(child: Text("Nothing",style: (TextStyle(color:whiteColor,fontSize: 30)),)));
    } else{
      result = doctors
          .where((doctor) =>
              doctor[1]!.toLowerCase().contains(enterWord.toLowerCase()))
          .toList();

      setState(() {
        found = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackColor,
        body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
            child: ListView(
              children: [
                Column(children: [
                  Directionality(
                      textDirection: TextDirection.rtl,
                      child: new TextField(
                        onChanged: ((value) => runfilter(value)),
                        controller: null,
                        autofocus: false,
                        style: new TextStyle(
                          fontSize: 22.0,
                          color: Color(0xFFbdc6cf),
                        ),
                        decoration: new InputDecoration(
                        
                          fillColor: Color.fromARGB(255, 43, 41, 41),
                          hintText: "     البحث عن المنتجات ...",hintStyle:TextStyle(fontSize: 25,color:pointEightFiveWhiteColor,fontFamily:arabicFont400),
                          contentPadding: const EdgeInsets.only(
                              left: 14.0, bottom: 8.0, top: 8.0),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: new BorderSide(
                          //       color: Color.fromARGB(255, 102, 99, 99)),
                          //   borderRadius: new BorderRadius.circular(25.7),
                          // ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: new BorderSide(
                                color: Color.fromARGB(255, 56, 55, 55)),
                            borderRadius: new BorderRadius.circular(25.7),
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Container(
                        width: 400,
                        height: 630,
                        child: ListView.builder(
                            itemCount: found.length,
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                      child: Column(
      children: [
        Material(
          color: blackColor,
          child: InkWell(
            splashColor: pointEightFiveWhiteColor,
            // ignore: sort_child_properties_last
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<BeveledRectangleBorder>(
                          BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                    ),
                    onPressed: (() {}),
                    child: Container(
                      width: 51,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: pointOEightWhiteColor),
                      child: Center(
                          child: Icon(Icons.call,
                              color: pointNineWhiteColor, size: 15)),
                    )),
                SizedBox(width: 80),
                Column(
                  children: [ MyText(
                        data: found[0].toString(),
                        font: arabicFont700,
                        size: 15,
                        color: pointEightFiveWhiteColor,
                        weight:FontWeight.w200,),
                    MyText(
                        data: found[1].toString(),
                        font: arabicFont700,
                        size: 15,
                        color: pointEightFiveWhiteColor,
                        weight:FontWeight.w200,),
                    
                    MyText(
                        data: '6 صباحاً - 1 مساءاً',
                        font: arabicFont700,
                        size: 15,
                        color: pointEightFiveWhiteColor,
                        weight:FontWeight.w100,),
                  ],
                ),
                SizedBox(width: 5),
                SizedBox(
                  height: 64,
                  width: 64,
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        found[2].toString(),
                        width: 64,
                        height: 64,
                      )),
                ),
              ],
            ),
            onTap: (() => Get.to(DoctorProfile(
                  doctorImage: found[3].toString(),
                  doctorName: found[1].toString(),
                  doctorSpcialty: found[2].toString(),
                ))),
          ),
        ),
        SizedBox(height: 20),
      ],
    ),),
                                ))),
                  ),
                ]),
              ],
            )));
  }
}
