import 'package:baby_care/services/models_moe.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:baby_care/services/used_fonts_and_colors.dart';
import 'package:flutter/material.dart';

class DoctorInfoRow extends StatelessWidget {
  const DoctorInfoRow({super.key});

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
                                child: Text('د. محمد عبد الرسول',
                                    style: TextStyle(
                                        color: pointEightFiveWhiteColor,
                                        fontSize: 24,
                                        fontFamily: arabicFont700),
                                    textAlign: TextAlign.end),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          MyText(
                              data: "أخصائي اطفال",
                              font: arabicFont400,
                              size: 20,
                              color: pointEightFiveWhiteColor),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:[
                              MyText(
                                  data: "غير متوفر لليوم",
                                  font: arabicFont400,
                                  size: 20,
                                  color: pointEightFiveWhiteColor),
                            ] //const [MyStar(size: 23)],
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
