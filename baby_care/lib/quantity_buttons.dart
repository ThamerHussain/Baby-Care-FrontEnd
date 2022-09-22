import 'package:baby_care/services/my_text.dart';

import 'services/used_fonts_and_colors.dart';
import 'package:baby_care/discreption.dart';
import 'discreption.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'schedule.dart';
import 'package:baby_care/services/description_container.dart';

class QuantityButton extends StatefulWidget {
  const QuantityButton({Key? key}) : super(key: key);

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            RaisedButton(
              color: shadedGrayColor.value,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              onPressed: () {
                setState(() {
                  countNum--;
                  if (countNum < 1) {
                    countNum = 1;
                  }
                  print(countNum);
                });
              },
              child: Text(
                ' -  ${countNum}',
                style: TextStyle(color: whiteColor.value, fontSize: 20),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            RaisedButton(
              color: shadedGrayColor.value,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              onPressed: () {
                setState(() {
                  countNum++;
                  print(countNum);
                });
              },
              child: Text(
                ' +  ${countNum}',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        )
      ],
    );
  }
}
