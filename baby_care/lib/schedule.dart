import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:baby_care/icons/material_icons.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:baby_care/models/text_field.dart';
import 'package:baby_care/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'config.dart';
import 'expansion_tile.dart';
import 'models.dart';

class Schedule extends StatelessWidget {
  const Schedule({
    super.key,
    required this.day,
    required this.time,
  });

  final String time, day;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 140,
      child: Column(
        children: [
          MyText(
              data: day,
              font: arabicFont400,
              size: 20,
              color: pointEightFiveWhiteColor),
          MyText(
              data: time,
              font: arabicFont400,
              size: 15,
              color: pointEightFiveWhiteColor)
        ],
      ),
    );
  }
}
