import 'package:baby_care/icons/pen_icon.dart';
import 'package:baby_care/services/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/user_profile_page.dart';
import 'used_fonts_and_colors.dart';

Padding userProfileRow(title, content) {
  // BuildContext context) {
  var controller = TextEditingController();

  // Rx<bool> nameFocusedNode = false.obs;
  // Rx<bool> phoneFocusedNode = false.obs;
  // Rx<bool> governorateFocusedNode = false.obs;
  // bool focusedNode = false;
  title == 'الإسم'
      ? {
          userName.value = content,
          controller.text = userName.value,
          // focusedNode = nameFocusedNode.value
        }
      : title == 'رقم الهاتف'
          ? {
              phoneNumber.value = content,
              controller.text = phoneNumber.value,
              // focusedNode = phoneFocusedNode.value
            }
          : {
              governorate.value = content,
              controller.text = governorate.value,
              // focusedNode = governorateFocusedNode.value
            };
  RxBool readOnly = true.obs;
  RxBool showCursor = false.obs;
  // RxBool autofocus = false.obs;

  return Padding(
    padding: const EdgeInsets.fromLTRB(35, 5, 5, 5),
    child: Obx(() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            splashColor: pointEightFiveWhiteColor.value,
            onTap: (() {
              // autofocus.value = true;
              readOnly.value = false;
              showCursor.value = true;
              // title == 'الإسم'
              // ? nameFocusedNode.value = true
              // : title == 'رقم الهاتف'
              //     ? phoneFocusedNode.value = true
              //     : governorateFocusedNode.value = true;
              // title == 'الإسم'
              //     ? focusedNode = true
              //     : title == 'رقم الهاتف'
              //         ? focusedNode = true
              //         : focusedNode = true;
              //
              // FocusScope.of(context).requestFocus(inputNode);
            }),
            child: Icon(
              Pen.icon,
              size: 24,
              color: whiteColor.value,
            ),
          ),
          // const Spacer(),
         Spacer(), Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: MyText(
                    data: title,
                    font: arabicFont400,
                    size: 20,
                    color: pointEightFiveWhiteColor.value),
              ),
              // const Spacer(),

              Obx(() {
                return SizedBox(
                  width: 230,
                  child: TextField(
                    controller: controller,
                    textAlign: TextAlign.start,
                    textDirection: TextDirection.rtl,
                    cursorColor: blueColor,
                    maxLines: 1,
                    minLines: 1,
                    // focusNode: focusedNode ? FocusNode() : null,
                    autofocus: true,
                    readOnly: readOnly.value,
                    showCursor: showCursor.value,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: arabicFont400,
                        color: blueColor),
                    decoration: const InputDecoration(
                      isCollapsed: true,
                      filled: false,
                      suffix: SizedBox(width: 0),
                      hintTextDirection: TextDirection.rtl,
                      border: InputBorder.none,
                    ),
                    onEditingComplete: () {
                      readOnly.value = true;
                      showCursor.value = false;
                      // autofocus.value = false;
                      // title == 'الإسم'
                      //     ? nameFocusNode.value = null
                      //     : title == 'رقم الهاتف'
                      //     ? phoneFocusNode.value = null
                      //     : governorateFocusNode.value = null;

                      // title == 'الإسم'
                      //     ? focusedNode = false
                      //     : title == 'رقم الهاتف'
                      //     ? focusedNode = false
                      //     : focusedNode = false;
                    },
                  ),
                );
              }),
            ],
          ),
        ],
      );
    }),
  );
}
